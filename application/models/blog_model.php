<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class blog_model extends CI_Model {
    
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

    
    
   
    public function getBlogData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('blog')->result();
    }
    public function getBlogDataLimit($sort = 'id desc') {

        $this->db->order_by($sort);
        $this->db->limit('6');
        return $this->db->get('blog')->result();
    }


     public function getBlogByCat($cat_id) {

        $this->db->where("cat",$cat_id );
        
        return $this->db->get('blog')->result();
    }

    public function getRandomBlog() {

         $this->db->order_by('id', 'RANDOM');
        
        return $this->db->get('blog')->result();
    }

 
    public function getBlogCatData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('blog_cats')->result();
    }
    
    
    public function getBlog($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('blog')->row();
    }

     public function getCat($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('blog_cats')->row();
    }
    
    public function editBlog() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
             'blog' => $this->input->post('blog'),
            'name' => $this->input->post('name'),
            'descrip' => $this->input->post('descrip'),
            'text' => $this->input->post('text'),
            'date' => $this->input->post('date'),
            'img' => $this->input->post('img'),
            'cat' => $this->input->post('cat'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('blog', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }


    public function editCat() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
             'title' => $this->input->post('name'),
            'descrip' => $this->input->post('descrip'),
         
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('blog_cats', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteBlog($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('blog');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    

    public function deleteBlogCat($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('blog_cats');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }



    public function addBlog() {
        $data = array(
            'blog' => $this->input->post('blog'),
            'name' => $this->input->post('name'),
            'descrip' => $this->input->post('descrip'),
            'text' => $this->input->post('text'),
            'date' => $this->input->post('date'),
            'img' => $this->input->post('img'),
            'cat' => $this->input->post('cat'),
        );
        
        $query = $this->db->insert('blog', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }


    public function addBlogCat() {
        $data = array(
            'title' => $this->input->post('name'),
            'descrip' => $this->input->post('descrip'),
        );
        
        $query = $this->db->insert('blog_cats', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

}
