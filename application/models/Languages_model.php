<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class languages_model extends CI_Model {
    
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
    public function getLanguagesData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('languages')->result();
    }
    
    
    public function getLanguages($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('languages')->row();
    }
    
    public function editLanguages() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('languages', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteLanguages($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('languages');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addLanguages() {
        $data = array(
            'name' => $this->input->post('name'),
        );
        
        $query = $this->db->insert('languages', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

}
