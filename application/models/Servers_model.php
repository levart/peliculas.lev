<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class servers_model extends CI_Model {
    
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
    public function getServersData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('servers')->result();
    }
    
    
    public function getServers($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('servers')->row();
    }
    
    public function editServers() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('servers', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteServers($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('servers');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addServers() {
        $data = array(
            'name' => $this->input->post('name'),
        );
        
        $query = $this->db->insert('servers', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

}
