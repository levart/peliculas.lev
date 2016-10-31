<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class directors_model extends CI_Model {
    
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
    public function getDirectorData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('directors')->result();
    }
    
    
    public function getDirector($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('directors')->row();
    }
    
    public function editDirector() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
            'real_name' => $this->input->post('real_name'),
            'birthdate' => $this->input->post('birthdate'),
            'birth_loc' => $this->input->post('birth_loc'),
            'proff' => $this->input->post('proff'),
            'height' => $this->input->post('height'),
            'raiting' => $this->input->post('raiting'),
            'biography' => $this->input->post('biography'),
            'img' => $this->input->post('img'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('directors', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteDirector($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('directors');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addDirector() {
        $data = array(
            'name' => $this->input->post('name'),
            'real_name' => $this->input->post('real_name'),
            'birthdate' => $this->input->post('birthdate'),
            'birth_loc' => $this->input->post('birth_loc'),
            'proff' => $this->input->post('proff'),
            'height' => $this->input->post('height'),
            'raiting' => $this->input->post('raiting'),
            'biography' => $this->input->post('biography'), 
            'img'=>$this->input->post('img'), 
        );
        
        $query = $this->db->insert('directors', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function lastDirector() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('directors')->row();
        return $data;
    }

}
