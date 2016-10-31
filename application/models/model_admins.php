<?php

class Model_admins extends CI_Model {

    private $oldpassword;
    private $email;
    private $active;

    public function can_log_in() {
        $this->db->where('email', $this->input->post('email'));
        $this->db->where('password', md5($this->input->post('password')));

        $query = $this->db->get('admin_users');

        if ($query->num_rows() == 1) {

            return true;
        } else {
            return false;
        }
    }


    public function add_admin($password) {  
        $salt = '5&JDDlwz%Rwh!t2Yg-Igae@QxPzFTSId';
        $enc_pass  = md5($salt.$password);
        $data = array(
            'email' => $this->input->post('email'),
            'username' => $this->input->post('username'),
            'user_type' => $this->input->post('user_type'),
            'password' => $enc_pass
        );
        $query = $this->db->insert('admin_users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function get_admin($email) {
        $this->db->where('email', $email);
        $admins = $this->db->get('admin_users')->row();

        return $admins;
    }
    public function edit_data($id) {
        $this->db->where('id',$id);
        $data = $this->db->get('admin_users')->row();
        return $data;
    }

    public function edit_admin($id) {
        $salt = '5&JDDlwz%Rwh!t2Yg-Igae@QxPzFTSId';
        $enc_pass  = md5($salt.$this->input->post('password'));
        $data = array(
            'email' => $this->input->post('email'),
            'username' => $this->input->post('username'),
            'password' => $enc_pass,
            'user_type' => $this->input->post('user_type'),
            
        );

        $this->db->where('id',$id);
        $query = $this->db->update('admin_users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function all_admins($limit='', $start='') {
        $this->db->limit($limit, $start);
        $admins = $this->db->get('admin_users')->result();

        return $admins;
    }

    public function pass_validate($email, $password) {
        $this->email = $email;
        $this->oldpassword = md5($password);

        $this->db->where('email', $this->email);
        $this->db->where('password', $this->oldpassword);
        $query = $this->db->get('admin_users');
        if ($query->num_rows() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_pass() {
        $data = array(
            'password' => md5($this->input->post('cpassword')),
        );

        $this->db->where('email', $this->session->userdata('email'));
        $query = $this->db->update('admin_users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function chackStatus() {
        $this->db->where('email', $this->session->userdata('email'));
        $admin = $this->db->get('admin_users')->row();
        if ($admin->status == 1) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    public function delete($id) {
        $this->db->where('id',$id);
        if($this->db->delete('admin_users')){
            return true;
        }else{
            return false;
        }
    }

    public function hide($id, $status) {
        if ($status == 0) {
            $this->active = '1';
        } elseif ($status == 1) {
            $this->active = '0';
        }
        $this->db->where('id', $id);
        $data = array(
            'active' => $this->active,
        );
        if ($this->db->update('admin_users', $data)) {
            return true;
        } else {
            return false;
        }
    }
    
    public function get_random_password($chars_min=6, $chars_max=8, $use_upper_case=false, $include_numbers=false, $include_special_chars=false)
    {
        $length = rand($chars_min, $chars_max);
        $selection = 'aeuoyibcdfghjklmnpqrstvwxz';
        if($include_numbers) {
            $selection .= "1234567890";
        }
        if($include_special_chars) {
            $selection .= "!@\"#$%&[]{}?|";
        }

        $password = "";
        for($i=0; $i<$length; $i++) {
            $current_letter = $use_upper_case ? (rand(0,1) ? strtoupper($selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))];            
            $password .=  $current_letter;
        }                

        return $password;
    }

}
