<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Admin extends CI_Controller {

    private $username;
    private $password;
    private $ip;
    private $check_password;
    private $salt;
    private $user;
    private $remember;
    private $status;
    private $userid;

    public function __construct() {
        parent::__construct();

        $this->load->model('admins_model');
        
        $this->load->library('form_validation');
        
        $this->load->library('upload');
        $this->load->helper('file');
        $this->load->library('image_lib');
        $this->load->library('pagination');
        $this->load->model('options');
        $this->load->helper("url");
        $this->load->helper('date');
    }
    
    public function index() {
        if ($this->session->userdata('is_admin_login')) {

       
        $data['bases'] = $this->admins_model->getAdminuserData();

            $this->load->view('admin/admin/main', $data);
            
        } else {
            redirect("admin");
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function edit($userid) {
        $this->userid = $userid;
        if ($this->session->userdata('id')) {
            $data['base'] = $this->admins_model->getAdmin($this->userid);
            $this->load->view('admin/admin/edit',$data);
        } else {
            redirect('/');
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function editdata() {

        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('username', 'სახელი', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');

            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error-notice';
                $data['message'] = validation_errors();
            } else {

                $query = $this->admins_model->editAdmin();



                if ($query == true) {
                    //send mail
                    $data['status'] = 'success-notice';
                    $data['message'] = "წარმატებით დარედაქტირდა";
                } else {
                    $data['status'] = 'error-notice';
                    $data['message'] = "არ დარედაქტირდა";
                }
            }

            echo json_encode($data); ;
        } else {
            redirect('/');
        }
    }

    //CRM momxmareblis parolis ganaxleba
    public function updateUserPassword() {
        $this->userid = $this->input->post('id');
        $this->load->helper('string');
        if ($this->session->userdata('id')) {
            $password = random_string('numeric', 8);
            $query = $this->admins_model->changeUserPassword($this->userid, $password);

            $userdata = $this->admins_model->getUser($this->userid);

            if ($query == true) {
                //send mail
                $mailfrom = 'noreply@finbook.ge';
                $namefrom = 'Finbook CRM';
                $mailto = $userdata->email;
                $nameto = $userdata->firstname . ' ' . $userdata->lastname;
                $subject = 'User Password Update';
                $tamplatelocation = 'email/merchantPass';
                $dataarray = array(
                    'name' => $userdata->firstname . ' ' . $userdata->lastname,
                    'email' => $userdata->email,
                    'password' => $password,
                );
                $this->mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray);
                $message = "<div class='alert alert-success'>წარმატებით გაიგზავნა</div>";
            } else {
                $message = "<div class='alert alert-warning'>არ გაიგზავნა</div>";
            }


            echo $message;
        } else {
            redirect('/');
        }
    }
    
    public function deleteUser() {
        $this->userid = $this->input->get('id');
        if ($this->admins_model->deleteUser($this->userid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }
    
    
    ///
    
    public function admins() {
        if ($this->session->userdata('is_admin_login')) {
            

        //check if ajax is called

        $data['bases'] = $this->admins_model->getAdminuserData();

            $this->load->view('admin/admins', $data);
            
        } else {
            redirect("admin");
        }
    }
    
    public function admindelete() {
        $this->id = $this->input->get('id', TRUE);
        if($this->admins_model->admindeleteIdData($this->id)){
            
            $data = array(
                'massage' => 'წარმატებით წაიშალა',
            );
            
        }else{
            $data = array(
                'massage' => 'არ წაიშალა',
            );
        }
        echo json_encode($data);
    }
    
    public function add() {
        
        if ($this->session->userdata('is_admin_login')) {

            $this->load->view('admin/admin/add');
        } else {
            redirect('/');
        }
    }
    public function adddata() {
        $this->load->helper('string');
        if ($this->session->userdata('is_admin_login')) {
            $this->form_validation->set_rules('username', 'სახელი', 'trim|required');
            $this->form_validation->set_rules('email', 'ელ.ფოსტა', 'trim|required|valid_email|is_unique[admin_users.email]');
            

            if ($this->form_validation->run() == FALSE) {
                $data = array(
                        'massage' => validation_errors('<div class="alert alert-warning">', '</div>'),
                    );
                
            } else {
                $this->password ="123456"; //random_string('numeric', 6);
                $query = $this->admins_model->addadmin($this->password);



                if ($query == true) {
                    $mailfrom = 'noreply@hippo.ge';
                $namefrom = 'HiPPo.ge';
                $mailto = $this->input->post('email');
                $nameto = $this->input->post('username');
                $subject = "User registration";
                $tamplatelocation = "email/addadmin";
                $dataarray = array(
                    'name' => $this->input->post("username"),
                    'email' => $this->input->post("email"),
                    'password' => $this->password,
                );
                //$this->mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray);
                    $data = array(
                        'massage' => 'წარმატებით დაემატა'.$this->password,
                    );
                    
                } else {
                    $data = array(
                        'massage' => 'არ დაემატა',
                    );
                    
                }
            }

            echo json_encode($data);
        } else {
            redirect('/');
        }
    }
    
    public function mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray) {
        $config = Array(
            'protocol' => 'smtp',
            'smtp_host' => 'smtp.googlemail.com',
            'smtp_port' => 587,
            'smtp_user' => 'chichuaetuna@gmail',
            'smtp_pass' => 'etuna1357',
            'mailtype'  => 'html', 
            'charset'   => 'iso-8859-1'
        );
        $this->load->library('email', $config);
//            $dat = array(
//                'name' => $name,
//                'email' => $email,
//                'code' => $code,
//                'pass' => $pass,
//            );
//            $config['protocol'] = 'sendmail';
//            $config['mailpath'] = '/usr/sbin/sendmail';
//            $config['charset'] = 'utf-8';
//            $config['wordwrap'] = TRUE;
//            $config['mailtype'] = 'html';
//        $config['newline'] = '';
//        $this->email->initialize($config);

        $this->email->from($mailfrom, $namefrom);
        $this->email->to($mailto, $nameto);

        $this->email->subject($subject);

        $html = $this->load->view($tamplatelocation, $dataarray, TRUE);
//                    $tpl_find = array ( '{NAME}','{EMAIL}','{CODE}','{PASS}');
//                    $tpl_replace = array ($name,$email,$code,$passwordi);
//                    $msg = file_get_contents("msg.txt");
// 
//                    $msgg = str_replace ($tpl_find,$tpl_replace, $msg );
        $this->email->message($html);

        $this->email->send();
    }
    
    
    
 

}
