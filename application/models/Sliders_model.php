<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class sliders_model extends CI_Model {
    
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
    public function getSliderData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('slider')->result();
    }
    
    
    public function getSlider($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('slider')->row();
    }
    
    public function editSlider() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
            'cover_img' => $this->input->post('cover_img'),
            'trailer_link' => $this->input->post('trailer_link'),
            'film_link' => $this->input->post('film_link'),
           
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('slider', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteSlider($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('slider');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addSlider() {
        $data = array(
            'name' => $this->input->post('name'),
            'cover_img' => $this->input->post('cover_img'),
            'trailer_link' => $this->input->post('trailer_link'),
            'film_link' => $this->input->post('film_link'),
        );
        
        $query = $this->db->insert('slider', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function lastSlider() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('slider')->row();
        return $data;
    }

}
