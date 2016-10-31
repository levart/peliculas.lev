<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class quality_model extends CI_Model {
    
    private $username;
    private $password;
    private $ip;
    private $check_password;
    private $salts;
    private $salt;
    private $user;
    private $oldpass;
    private $dbpass;
    private $newpass;
    private $repeatpass;
    private $smscode;
    private $phone;


    public function __construct() {
        parent::__construct();
        $this->load->library('upload');
        
        
        //$this->load->library('image_moo');
        $this->load->helper('string');
        $this->load->helper('file');
    }

    
    
    //admins user info
    public function getQualityData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('movies_quality')->result();
    }
    
    
    public function getQuality($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('movies_quality')->row();
    }
    
    public function editQuality() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('movies_quality', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteQuality($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('movies_quality');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addQuality() {
        $data = array(
            'name' => $this->input->post('name'),
        );
        
        $query = $this->db->insert('movies_quality', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

}
