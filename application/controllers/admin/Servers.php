<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class servers extends CI_Controller {

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

        $this->load->model('servers_model');
        
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

       
        $data['servers'] = $this->servers_model->getServersData();

            $this->load->view('admin/servers/main',$data);
            
        } else {
            redirect("admin");
        }
    }
    
    //CRM msaxiobis redaqtireba
    public function edit($id) {
        $this->id = $id;
        if ($this->session->userdata('id')) {
            $data['server'] = $this->servers_model->getServers($this->id);
            $this->load->view('admin/servers/edit',$data);
        } else {
            redirect('/');
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function editdata() {

        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('name', 'სახელი', 'required');
            
            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error-notice';
                $data['message'] = validation_errors();
            } else {
               

                $query = $this->servers_model->editServers();



                if ($query == true) {
                    //send mail
                    $data['status'] = 'success-notice';
                    $data['message'] = "წარმატებით დარედაქტირდა";
                    $data['message2'] = $this->input->post('img');
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


    
    public function delete() {
        $this->actorid = $this->input->get('id');
        if ($this->servers_model->deleteServers($this->actorid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }


    
    public function add() {
        
        if ($this->session->userdata('is_admin_login')) {

            $this->load->view('admin/servers/add');
        } else {
            redirect('/');
        }
    }



    public function adddata() {
        $this->load->helper('string');
        if ($this->session->userdata('is_admin_login')) {
            $this->form_validation->set_rules('name', 'სახელი', 'trim|required');
       
            if ($this->form_validation->run() == FALSE) {
                $data = array(
                        'massage' => validation_errors('<div class="alert alert-warning">', '</div>'),
                    );
                
            } else {

                $query = $this->servers_model->addServers ();
            }

  
        } else {
            redirect('/');
        }
    }
 

}
