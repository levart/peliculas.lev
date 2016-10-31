<?php
if (!defined('BASEPATH'))exit('No direct script access allowed');
class Model_users extends CI_Model {

    private $oldpassword;
    private $email;
    private $videoid;
    var $details;

    public function validate_user( $email, $password ) {
        // Build a query to retrieve the user's details
        // based on the received username and password
        $this->db->from('users');
        $this->db->where('email',$email );
        $this->db->where( 'password', md5($password) );
        $login = $this->db->get()->result();

        // The results of the query are stored in $login.
        // If a value exists, then the user account exists and is validated
        if ( is_array($login) && count($login) == 1 ) {
            // Set the users details into the $details property of this class
            $this->details = $login[0];
            // Call set_session to set the user's session vars via CodeIgniter
            $this->set_session();
            return true;
        }

        return false;
    }
    
    public function lastlogin( $email) {
        $data = array(
            'lastlogin' => time()
        );
        
        $this->db->where('email',$email );
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function lastseen() {
        $data = array(
            'seentime' => time()
        );
        
        $this->db->where('email',$this->session->userdata('email'));
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function validate_fb_user( $email) {
        // Build a query to retrieve the user's details
        // based on the received username and password
        $this->db->from('users');
        $this->db->where('email',$email );
       
        $login = $this->db->get()->result();

        // The results of the query are stored in $login.
        // If a value exists, then the user account exists and is validated
        if ( is_array($login) && count($login) == 1 ) {
            // Set the users details into the $details property of this class
            $this->details = $login[0];
            // Call set_session to set the user's session vars via CodeIgniter
            $this->set_session();
            return true;
        }

        return false;
    }

    public function set_session() {
        // session->set_userdata is a CodeIgniter function that
        // stores data in CodeIgniter's session storage.  Some of the values are built in
        // to CodeIgniter, others are added.  See CodeIgniter's documentation for details.
        $this->session->set_userdata( array(
                'id' => $this->details->id,
                'fb_id' => $this->details->fb_id,
                'name' => $this->details->name,
                'email' => $this->details->email,
                'isLoggedIn' => true
            )
        );
    }

    public function can_log_in() {
        $this->db->where('email', $this->input->post('email'));
        $this->db->where('password', md5($this->input->post('password')));

        $query = $this->db->get('users');

        if ($query->num_rows() == 1) {

            return true;
        } else {
            return false;
        }
    }
    
    public function get_log_in() {
        $this->db->where('email', $this->input->post('email'));
        $this->db->where('password', md5($this->input->post('pass')));

        $query = $this->db->get('users')->row(); 
            return $query;
    }

    public function add_temp_user($key) {
        $data = array(
            'email' => $this->input->post('email'),
            'password' => md5($this->input->post('password')),
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'birthdate' => $this->input->post('birthdate'),
            'location' => $this->input->post('location'),
            'key' => $key
        );

        $query = $this->db->insert('temp_user', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function is_key_valid($key) {
        $this->db->where('key', $key);
        $query = $this->db->get('temp_user');

        if ($query->num_rows() == 1) {
            return true;
        } else
            return false;
    }

    public function add_user($key) {
        $this->db->where('key', $key);
        $temp_user = $this->db->get('temp_user');

        if ($temp_user) {
            $row = $temp_user->row();

            $data = array(
                'email' => $row->email,
                'password' => $row->password,
                'firstname' => $row->firstname,
                'lastname' => $row->lastname,
                'birthdate' => $row->birthdate,
                'location' => $row->location,
                'regtime' => $row->regtime
            );

            $did_add_user = $this->db->insert('users', $data);

            if ($did_add_user) {
                $this->db->where('key', $key);
                $this->db->delete('temp_user');
                return $data['email'];
            } else
                return false;
        } else
            return false;
    }
    
    public function add_fb_user($id,$email,$password,$name,$sex='n') {
        
        if($sex == 'male'){
            $gender = 'm';
        }elseif($sex == 'female'){
            $gender = 'f';
        }else{
            $gender = 'n';
        }
        
        if($birthdate == NULL){
            $birthdate = '25/01/1987';
        }
        $data = array(
            'fb_id' => $id,
            'email' => $email,
            'password' => $password,
            'name' => $name,
            
            'reg_from' => 1,
            'regtime' => time(),
            'sex'=>$gender
        );

        $did_add_user = $this->db->insert('users', $data);

        if ($did_add_user) {
            $this->validate_fb_user($email);
            return $data['email'];
        } else{
            return false;
        }
    }

    public function add_user_adm($password) {  
        $data = array(
            'email' => $this->input->post('email'),
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'location' => $this->input->post('location'),
            'birthdate' => $this->input->post('birthdate'),
            'status' => $this->input->post('status'),
            'password' => md5($password)
        );
        $query = $this->db->insert('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function get_user($email) {
        $this->db->where('email', $email);
        $users = $this->db->get('users')->row();

        return $users;
    }
    public function edit_data($id) {
        $this->db->where('id',$id);
        $data = $this->db->get('users')->row();
        return $data;
    }

    public function edit_user($id,$avatar = 'no_avatar.jpg') {
        $data = array(
            'user_comments' => $this->input->post('user_comments'),
            'sex' => $this->input->post('sex'),
            'birthdate' => $this->input->post('day')."-".$this->input->post('month')."-".$this->input->post('year'),
            'user_receive_mail' => $this->input->post('user_receive_mail'),
            'noshow_message_send' => $this->input->post('noshow_message_send'),
            'avatar' => $avatar,

        );

        $this->db->where('id',$id);
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function all_users($limit, $start) {
        $this->db->limit($limit, $start);
        $users = $this->db->get('users')->result();

        return $users;
    }
    
    public function all_users_nl() {
        $this->db->select('id,name as title');
        $users = $this->db->get('users')->result();

        return $users;
    }

    public function pass_validate($email, $password) {
        $this->email = $email;
        $this->oldpassword = md5($password);

        $this->db->where('email', $this->email);
        $this->db->where('password', $this->oldpassword);
        $query = $this->db->get('users');
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
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function chackStatus() {
        $this->db->where('email', $this->session->userdata('email'));
        $user = $this->db->get('users')->row();
        if ($user->status == 1) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    public function delete($id) {
        $this->db->where('id',$id);
        if($this->db->delete('users')){
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
        if ($this->db->update('users', $data)) {
            return true;
        } else {
            return false;
        }
    }
    
    
    public function chaneldelete($id) {
        $this->db->where('id',$id);
        if($this->db->delete('chanels')){
            return true;
        }else{
            return false;
        }
    }

    public function chanelhide($id, $status) {
        if ($status == 0) {
            $this->active = '1';
        } elseif ($status == 1) {
            $this->active = '0';
        }
        $this->db->where('id', $id);
        $data = array(
            'active' => $this->active,
        );
        if ($this->db->update('chanels', $data)) {
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
    
    
    //Permissions
    public function all_permissions($limit='', $start='') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('permissions')->result();
        return $data;
    }
    public function edit_data_permissions($id) {
        $this->db->where('id',$id);
        $data = $this->db->get('permissions')->row();
        return $data;
    }
    
    public function delete_permission($id) {
        $this->db->where('id',$id);
        if($this->db->delete('permissions')){
            return true;
        }else{
            return false;
        }
    }
    
    public function add_permission() {
        $data = array(
            'title' => $this->input->post('title'),
        );

        $query = $this->db->insert('permissions', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function edit_permission($id) {
        $data = array(
            'title' => $this->input->post('title'),

        );
        $this->db->where('id',$id);
        $query = $this->db->update('permissions', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    
    
    //site side
    
    public function register_user() {  
        $data = array(
            'email' => $this->input->post('user_email'),
            'name' => $this->input->post('user_name'),
            'password' => md5($this->input->post('user_pass')),
            'sex' => $this->input->post('user_sex'),
            'birthdate' => $this->input->post('s_year')."-".$this->input->post('s_month')."-".$this->input->post('s_day'),
            'user_comments' => $this->input->post('user_comments'),
        );
        $query = $this->db->insert('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function userverify($username) {
        $this->db->where('name', $username);
        $users = $this->db->get('users')->row();
        if($users){
            return true;
        }else{
            return false;
        }
    }
    
    public function addChanel() {  
        $data = array(
            'title' => $this->input->post('title'),
            'cat' => $this->input->post('cat'),
            'website' => $this->input->post('website'),
            'about' => $this->input->post('about'),
            'user_id' => $this->input->post('user_id'),
            'cover' => $this->input->post('cover'),
            'avatar' => $this->input->post('avatar'),
        );
        $query = $this->db->insert('chanels', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function all_chanel_limit($limit, $start) {
        $this->db->limit($limit, $start);
        
        return $this->db->get('chanels')->result(); 
    }
    
     public function all_chanelCat_nolimit() {
        $this->db->select('id,title_eng as title');
        return $this->db->get('chanel_cat')->result(); 
    }
    
    public function chanel($videoid) {
        $this->db->where('id', $videoid);
        $video = $this->db->get('videos')->row();
        
        $this->db->where('user_id', $video->user);
        return $this->db->get('chanels')->row(); 
    }
    
    
    public function chanelAvatar($chanelid) {
        $this->db->where('id', $chanelid);
        $data = $this->db->get('chanels')->row(); 
        if(empty($data->avatar)){
            echo base_url()."images/testav.jpg";
        }else{
            echo base_url()."uploads/chanels/avatars/".$data->avatar;
        }
    }
    
    public function detect_user($user_id) {
        $this->db->where('id', $user_id);
        return $this->db->get('users')->row(); 
    }
    
    public function get_history($user_id) {
        $this->db->where('userid',$user_id);
        $this->db->order_by("id", "desc"); 
        return $this->db->get('history')->result();
    }
    
    public function clean_history($user_id) {
        $this->db->where('userid',$user_id);
        if ($this->db->delete('history')) {
            return true;
        } else {
            return false;
        }
    }

    public function get_history_videos($videoid) {
        $this->db->where('id', $videoid);
        
        $data = $this->db->get('videos')->row();
        return $data;
    }
    
    public function get_fav($user_id,$type = 'videos') {
        $this->db->where('userid',$user_id);
        $this->db->where('type',$type);
        $this->db->order_by("id", "desc"); 
        return $this->db->get('user_fav')->result();
    }

}
