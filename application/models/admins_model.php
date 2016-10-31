<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class admins_model extends CI_Model {
    
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
    
    //ganacxadebis raodenobis amogeba
    public function userCount() {
        
        $data = $this->db->get('admin_users')->num_rows();
        return $data;
    }
    
    
    //salt amogeba
    public function getAdminSalt($username) {
        $this->username = $username;
        $this->db->where('username', $this->username);
        return $this->db->get('admin_users')->row()->salt;
    }
    //parolis amogeba bazidan
    public function getAdminPassword($username, $password) {
        $this->username = $username;
        $this->password = $password;
        $this->salts = $this->getAdminSalt($this->username);
        if(!$this->salts){
            return false;
        }else{
        $this->check_password = hash('sha256', $this->password . $this->salts);
        for ($round = 0; $round < 65536; $round++) {
            $this->check_password = hash('sha256', $this->check_password . $this->salts);
        }
        return $this->check_password . "hippo";
        }
    }
    
    //momxmareblis shemocmeba 
    public function CheckAdminLogin($username, $password) {
        $this->password = $this->getAdminPassword($username, $password);
        
        $this->db->where('username', $username);
        $this->db->where('password', $this->password);
        $query = $this->db->get('admin_users');
        if (!$query) {
            return FALSE;
        } else {
            return $query->row();
        }
    }


    //shesvlebi log shenaxva
    public function loginLog($action, $status, $username = 0) {
        $data = array(
            'action' => $action,
            'status' => $status,
            'ip' => $this->input->ip_address(),
            'user_id' => $username,
        );

        $query = $this->db->insert('login_log', $data);
    }

    
    
    //admins user info
    public function getAdminuserData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('admin_users')->result();
    }
    
    
    public function getAdmin($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('admin_users')->row();
    }
    
    public function editAdmin() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'username' => $this->input->post('username'),
            'email' => $this->input->post('email'),
        );
        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('admin_users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    //parolis shecvla
    public function AdminpassChange($id) {
        //Password generation
        $this->oldpass = $this->getAdminPassword($this->session->userdata('username'), $this->input->post('oldpassword'));
        $this->dbpass = $this->getAdmin($id)->password;
        $this->newpass = $this->input->post('password');
        $this->repeatpass = $this->input->post('passwordVerification');


        if ($this->oldpass == $this->dbpass) {//ძველი პაროლის შემოწმება და ახალის გენერაცია
            if ($this->newpass != $this->repeatpass) {//განმეორებითი პაროლის შემოწმება
                $message = '<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>შეცდომა: ახალი პაროლი და განმეორებითი პაროლი არ ემთხვევა ერთმანეთს!</div>';
            } else {
                //ახალი პაროლის გენერაცია გენერაცია
                $this->password = $this->getAdminPassword($this->session->userdata('username'), $this->newpass);
                $data = array(
                    'password' => $this->password,
                );
                $this->db->where('id', $id);
                $this->db->where('password', $this->oldpass);
                $query = $this->db->update('admin_users', $data);
                if ($query) {
                    $message = '<div class="alert alert-success fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>პაროლი წარმატებით შეიცვალა</div>';
                } else {
                    $message = '<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>შეცდომა: პაროლი არ შეიცვალა!</div>';
                }
            }
        } else {
            $message = '<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>შეცდომა: ძველი პაროლი არასწორია!</div>';
        }
        return $message;
    }
    
    public function admindeleteIdData($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('admin_users');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addadmin($password) {
        $this->password = $password;
        $this->salt = $this->setSalt();
        $this->password = $this->setPassword($this->password,$this->salt);
        $data = array(
            'username' => $this->input->post('username'),
            'email' => $this->input->post('email'),
            'salt' => $this->salt,
            'password' => $this->password,
            'user_type' => $this->input->post('user_type'),
            'active' => 1
            
        );
        
        $query = $this->db->insert('admin_users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }


        //salt sheqmna

    public function setSalt() {

        return dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));

    }
    
    //parolis generireba bazistvis

    public function setPassword($password,$salt) {

        $this->password = $password;

        $this->password = hash('sha256', $this->password . $salt);

        for($round = 0; $round < 65536; $round++){

            $this->password = hash('sha256', $this->password . $salt);

        } 

        return $this->password."hippo";

    }
}
