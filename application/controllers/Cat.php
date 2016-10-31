<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cat extends CI_Controller {

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

	public function index($catid){

		 $this->cat_id = $catid;

		$data['blogs'] = $data['blogs'] = $this->blog_model->getBlogByCat($this->cat_id);  
		$this->load->view('inc/head');
		$this->load->view('inc/header');
		$this->load->view('cat', $data);
		$this->load->view('inc/footer');
		$this->load->view('inc/foot');
	}


	



}
