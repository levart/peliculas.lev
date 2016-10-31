<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Users extends CI_Controller {

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

        $this->load->model('users_model');
        
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
            $this->active = $this->input->get('active');

        $this->per_page = $this->input->get('page');
        $config = array();
        $config["base_url"] = $this->options->add_or_change_parameter('page');
        $config["total_rows"] = $this->users_model->Adminrecord_count();
        $config['per_page'] = 15;

        $this->pagination->initialize($config);
        if ($this->per_page == 0 || empty($this->per_page)) {
            $page = 0;
        } else {
            $page = $this->input->get('page');
        }
        $data['page'] = $page;

        //check if ajax is called

        $data['bases'] = $this->users_model->getAdminData();
        $data['pagination'] = $this->pagination->create_links();

            $this->load->view('admin/users/main', $data);
            
        } else {
            redirect("admin");
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function edit($userid) {
        $this->userid = $userid;
        if ($this->session->userdata('id')) {
            $data['base'] = $this->users_model->getProfile($this->userid);
            $this->load->view('admin/users/edit',$data);
        } else {
            redirect('/');
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function editdata() {

        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('firstname', 'სახელი', 'required');
            $this->form_validation->set_rules('lastname', 'გვარი', 'required');
            $this->form_validation->set_rules('personalID', 'პირადი ნომერი', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            $this->form_validation->set_rules('phone', 'Phone', 'required');

            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error-notice';
                $data['message'] = validation_errors();
            } else {

                $query = $this->users_model->editUser();



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
            $query = $this->users_model->changeUserPassword($this->userid, $password);

            $userdata = $this->users_model->getUser($this->userid);

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
        if ($this->users_model->deleteUser($this->userid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }
    
    
    ///
    
    public function admins() {
        if ($this->session->userdata('is_admin_login')) {
            

        //check if ajax is called

        $data['bases'] = $this->users_model->getAdminuserData();

            $this->load->view('admin/admins', $data);
            
        } else {
            redirect("admin");
        }
    }
    
    public function admindelete() {
        $this->id = $this->input->get('id', TRUE);
        if($this->users_model->admindeleteIdData($this->id)){
            
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
    
    public function addadmin() {
        
        if ($this->session->userdata('is_admin_login')) {

            $this->load->view('admin/addadmin');
        } else {
            redirect('/');
        }
    }
    public function adminadddata() {
        $this->load->helper('string');
        if ($this->session->userdata('is_admin_login')) {
            $this->form_validation->set_rules('username', 'სახელი', 'trim|required');
            $this->form_validation->set_rules('email', 'ელ.ფოსტა', 'trim|required|valid_email|is_unique[admin_users.email]');
            

            if ($this->form_validation->run() == FALSE) {
                $data = array(
                        'massage' => validation_errors('<div class="alert alert-warning">', '</div>'),
                    );
                
            } else {
                $this->password = random_string('numeric', 6);
                $query = $this->users_model->addadmin($this->password);



                if ($query == true) {
                    $mailfrom = 'noreply@hippo.ge';
                $namefrom = 'HiPPo.ge';
                $mailto = $this->input->post('email');
                $nameto = $this->input->post('username');
                $subject = "User registration";
                $tamplatelocation = "email/merchantReg";
                $dataarray = array(
                    'name' => $this->input->post("username"),
                    'email' => $this->input->post("email"),
                    'password' => $this->password,
                );
                $this->mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray);
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
        $this->load->library('email');
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
    
    
    
    
    ////////////////
    // SIte users
    ////////////////
    
    public function usereditdata() {
        $this->userid = $this->input->post('id');

            $this->form_validation->set_rules('firstname', 'სახელი', 'required');
            $this->form_validation->set_rules('lastname', 'გვარი', 'required');
            $this->form_validation->set_rules('personalID', 'პირადი ნომერი', 'required');
            $this->form_validation->set_rules('phone', 'Phone', 'required');

            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error';
                $data['message'] = validation_errors();
            } else {

                $query = $this->users_model->editSiteUser($this->userid);
                if ($query == true) {
                    $data['status'] = 'success';
                    $data['message'] = "წარმატებით დარედაქტირდა";
                } else {
                    $data['status'] = 'error';
                    $data['message'] = "არ დარედაქტირდა";
                }
            }

            echo json_encode($data);

    }
    
    
    public function userprofile($user_id) {
        $this->userid = $user_id;
        
        $data['user'] = $this->users_model->getUser($this->userid);
        $data['work'] = $this->users_model->getWork($data['user']->work);
        $data['sallary'] = $this->users_model->getsallary($data['user']->sallary);
        $data['SuccessOrderSum'] = $this->users_model->getSuccessOrderSum($data['user']->id);
        $data['UnSuccessOrderSum'] = $this->users_model->getUnSuccessOrderSum($data['user']->id);
        $data['OrderPortfel'] = $this->users_model->getOrderPortfel($data['user']->id);
        $data['UserOrders'] = $this->users_model->getUserOrders($data['user']->id);
        
        $this->load->view('admin/users/user_profile',$data);
    }
    
    public function usertransaction($id) {
        
        $data['ord'] = $this->order_model->rowOrdersById($id);
        $data['grafiks'] = $this->order_model->getGrafik($id,$data['ord']->userId);
        
        $this->load->view('admin/users/usertransaction',$data);
    }
    
    public function updateGraf() {
        //updateGraf($lastid,$user,$product,$month,$total,$sum,$netsum,$takedate,$ordarDate,$pre = 0)
        $ords = $this->order_model->getOrders();
        foreach ($ords as $ord) {
            $this->cart_model->updateGraf($ord->id,$ord->userId);
        }
        
    }
    
    public function updateprodSum() {
        //updateGraf($lastid,$user,$product,$month,$total,$sum,$netsum,$takedate,$ordarDate,$pre = 0)
        $ordpords = $this->order_model->getAllOrderPrducts();
        foreach ($ordpords as $ordpord) {
            echo $ordpord->order_id."-".$ordpord->netsum."-".$ordpord->sum."<br/>";
        }
    }
    
    public function usergrafiki() {
        
    $this->order_model->deletetrans();
       
    }
    
    
    public function userCase($user_id) {
        $this->userid = $user_id;
        
        $data['user'] = $this->users_model->getUser($this->userid);
        $data['work'] = $this->users_model->getWork($data['user']->work);
        $data['sallary'] = $this->users_model->getsallary($data['user']->sallary);
        $data['SuccessOrderSum'] = $this->users_model->getSuccessOrderSum($data['user']->id);
        $data['UnSuccessOrderSum'] = $this->users_model->getUnSuccessOrderSum($data['user']->id);
        $data['OrderPortfel'] = $this->users_model->getOrderPortfel($data['user']->id);
        $data['UserOrders'] = $this->users_model->getUserOrders($data['user']->id);
            
        $this->load->view('admin/users/usercase', $data);

    }
}
