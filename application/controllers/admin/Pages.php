<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pages extends CI_Controller {

    private $id;


    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata('is_admin_login')) {  
            redirect('admin');
        }
        $this->load->model('pages_model');
    }
    
    public function index() {
        $data['bases'] = $this->pages_model->getData();
        $this->load->view('admin/pages/main',$data);   
    }
    
    public function edit($id) {
        $this->id = $id;

        $data['base'] = $this->pages_model->getIdDataAdmin($this->id);
        $this->load->view('admin/pages/editpages',$data);
    }
    
    public function editdata() {
        $this->id = $this->input->post('id', TRUE);
        if($this->pages_model->editIdData($this->id)){
            
            $data = array(
                'massage' => 'წარმატებით დარედაქტირდა ცვლილება',
            );
            
        }else{
            $data = array(
                'massage' => 'ცვლილება არ დარედაქტირდა',
            );
        }
        echo json_encode($data);
    }
    
    public function add() {

        $this->load->view('admin/pages/addpages');
    }
    
    public function adddata() {
        
        if($this->pages_model->addData()){
            
            $data = array(
                'massage' => 'წარმატებით დაემატა',
            );
            
        }else{
            $data = array(
                'massage' => 'არ დაემატა',
            );
        }
        echo json_encode($data);
    }
    
    public function delete($id) {
        $this->id = $this->input->get('id', TRUE);
        if($this->pages_model->deleteIdData($this->id)){
            
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
    
    
    
    
    
}