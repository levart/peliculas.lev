<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	
	 public function __construct() {
        parent::__construct();

        $this->load->model('blog_model'); 
        $this->load->library('pagination');
        $this->load->helper("url");
        $this->load->helper('date');
         $this->load->helper('text');
    }

	public function index(){

		$data['blogs'] = $data['blogs'] = $this->blog_model->getBlogData();  
		//$this->load->view('inc/head');
		//$this->load->view('inc/header');
		$this->load->view('index', $data);
		//$this->load->view('inc/footer');
		//$this->load->view('inc/foot');
	}   


	public function view($id){
		$this->id=$id;
		$data['blog'] = $this->blog_model->getBlog($this->id); 
		$data['randBlog'] = $this->blog_model->getRandomBlog(); 
		$this->load->view('single_blog', $data);
		$this->load->view('inc/footer');
		$this->load->view('inc/foot');
	}

}
