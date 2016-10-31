<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Blog extends CI_Controller {

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

        $this->load->model('blog_model');
        
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

       
        $data['blogs'] = $this->blog_model->getBlogData();

            $this->load->view('admin/blog/main',$data);
            
        } else {
            redirect("admin");
        }
    }
    
    //CRM msaxiobis redaqtireba
    public function edit($userid) {
        $this->userid = $userid;
        if ($this->session->userdata('id')) {
            $data['blog'] = $this->blog_model->getBlog($this->userid);
            $data['cats'] = $this->blog_model->getBlogCatData();
            $this->load->view('admin/blog/edit',$data);
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
               

                $query = $this->blog_model->editBlog();



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
        if ($this->blog_model->deleteBlog($this->actorid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }


    
    public function add() {
        
        if ($this->session->userdata('is_admin_login')) {

        $data['cats'] = $this->blog_model->getBlogCatData();


            $this->load->view('admin/blog/add',$data);
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

                $query = $this->blog_model->addBlog ();
            }

  
        } else {
            redirect('/');
        }
    }

     public function cats() {
        if ($this->session->userdata('is_admin_login')) {

       
        $data['blogs'] = $this->blog_model->getBlogCatData();

            $this->load->view('admin/blog/cats',$data);
            
        } else {
            redirect("admin");
        }
    }


     public function addCat() {
        
        if ($this->session->userdata('is_admin_login')) {

            $this->load->view('admin/blog/addcat');
        } else {
            redirect('/');
        }
    }


    public function addCatdata() {

        $this->load->helper('string');
        if ($this->session->userdata('is_admin_login')) {
                $query = $this->blog_model->addBlogCat ();
        } else {
             echo "error";
            redirect('/');
        }
    }


    public function deleteCat() {
        $this->actorid = $this->input->get('id');
        if ($this->blog_model->deleteBlogCat($this->actorid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }



        public function editCat($userid) {
        $this->userid = $userid;
        if ($this->session->userdata('id')) {
            $data['cat'] = $this->blog_model->getCat($this->userid);
            $this->load->view('admin/blog/editcat',$data);
        } else {
            redirect('/');
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function editCatdata() {

        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('name', 'სახელი', 'required');
            
            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error-notice';
                $data['message'] = validation_errors();
            } else {
               

                $query = $this->blog_model->editCat();



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
 

}
