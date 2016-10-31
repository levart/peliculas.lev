<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class genre_model extends CI_Model {
    
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
    public function getActorData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('genre')->result();
    }
    
    
    public function getActor($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('genre')->row();
    }
    
    public function editActor() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('genre', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteActor($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('genre');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addactor() {
        $data = array(
            'name' => $this->input->post('name'),
        );
        
        $query = $this->db->insert('genre', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }


     public function lastGenre() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('genre')->row();
        return $data;
    }

}
