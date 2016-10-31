<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    private $username;
    private $password;
    private $ip;
    private $user;
    
    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('users_model');
    }

    public function index() {
        if ($this->session->userdata('is_admin_login')) {
            $this->load->view('admin/home');
        } else {
            $this->load->view('admin/login');
        }
    }

    public function login() {
        $this->username = $this->input->post('username');
        $this->password = $this->input->post('password');
        $this->ip = $this->input->ip_address();

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');



        if ($this->form_validation->run() == FALSE) {
            $data['status'] = 'error';
            $data['message'] = "<div class='alert alert-danger'>შეცდომა! გთხოვთ შეამოწმოთ მომხმარებლის სახელი და პაროლი!</div>";
        } else {


            if (!$this->user = $this->users_model->CheckAdminLogin($this->username, $this->password)) {
                $data['status'] = 'error';
                $data['message'] = "<div class='alert alert-danger'>შეცდომა! გთხოვთ შეამოწმოთ მომხმარებლის სახელი და პაროლი!</div>";
            } else {

                //$this->users_model->loginLog('userlogin', 'done', $this->user->id);

                $this->session->set_userdata(array(
                    'id' => $this->user->id,
                    'username' => $this->user->username,
                    'is_admin_login' => true
                ));



                $this->remember = $this->input->post('remember');
                if ($this->remember) {
                    $this->session->set_userdata('remember', true);
                }

                $this->userfirstlogin = $this->session->userdata('firstlogin');
//            if($this->userfirstlogin == true){
//                redirect('main/firstlogin');
//            }else{
//                redirect('main/acc');
//            }

                $data['status'] = 'success';
                $data['message'] = "<div class='alert alert-success'>წარმატებით გაიარეთ ავტორიზაცია!</div>";
            }
        }
        echo json_encode($data);
    }
    
    public function logout() {
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('user_type');
        $this->session->unset_userdata('is_admin_login');   
        $this->session->sess_destroy();
        $this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");
        $this->output->set_header("Pragma: no-cache");
        redirect('admin/home', 'refresh');
    }
}
