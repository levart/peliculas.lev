<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class users_model extends CI_Model {
    
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
    private $listId;


    public function __construct() {
        parent::__construct();
        $this->load->library('upload');
        
        
        //$this->load->library('image_moo');
        $this->load->helper('string');
        $this->load->helper('file');
    }
    
    //ganacxadebis raodenobis amogeba
    public function userCount() {
        
        $data = $this->db->get('users')->num_rows();
        return $data;
    }
    
    //salt amogeba
    public function getSalt($username) {
        $this->db->where('email', $username);
        $query = $this->db->get('users')->row();
        if($query){
            return $query->salt;
        }else{
            return false;
        }
    }
    
    //salt amogeba IDit
    public function getSaltById($userId) {
        $this->db->where('id', $userId);
        return $this->db->get('users')->row()->salt;
    }
    
    //salt sheqmna
    public function setSalt() {
        return dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));
    }
    
    //parolis generireba bazistvis
    public function setPassword($password,$salt) {
        $this->password = $password;
        $this->password = hash('sha256', $this->password . $salt);
        return $this->password."hippo";
    }

    //parolis amogeba bazidan
    public function getPassword($username, $password) {
        $this->username = $username;
        $this->password = $password;
        $this->salts = $this->getSalt($this->username);
        $this->check_password = hash('sha256', $this->password . $this->salts);
        return $this->check_password . "hippo";
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
    
    
    public function addusers($password) {
        
        $this->smscode = $password;
        $this->phone = $this->input->post('phone');
        
        $this->password = $password;
        $this->salt = $this->setSalt();
        $this->password = $this->setPassword($this->password,$this->salt);
        $data = array(
                'username' => $this->input->post('username'),
                'email' => $this->input->post('email'),
                'birth' => $this->input->post('inputDay')."-".$this->input->post('inputMonth')."-".$this->input->post('inputYear'),
                'gender' => $this->input->post('gender'),
                'salt' => $this->salt,
                'password' => $this->password,
                'regtime' => time(),
                'firstlogin' => 1
            
        );
        
        $query = $this->db->insert('users', $data);
        $lastid = $this->db->insert_id();
        if ($query) {
            return true;
            
            // //send sms
            // $this->smssend($lastid, '995'.$this->phone, $this->smscode);
            // return true;
        } else {
            return false;
        }
    }
    
    public function addagentusers($password) {
        
        $this->smscode = $password;
        $this->phone = $this->input->post('phone');
        
        $this->password = $password;
        $this->salt = $this->setSalt();
        $this->password = $this->setPassword($this->password,$this->salt);
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'personalID' => $this->input->post('personalID'),
            'email' => $this->input->post('email'),
            'phone' => $this->phone,
            'birth' => $this->input->post('birth'),
            'address' => $this->input->post('address'),
            'gender' => $this->input->post('gender'),
            'work' => $this->input->post('work'),
            'sallary' => $this->input->post('sallary'),
            
            'organisation' => $this->input->post('organisation'),
            'rule' => $this->input->post('rule'),
            'salt' => $this->salt,
            'password' => $this->password,
            'regtime' => time(),
            'firstlogin' => 1
            
        );
        
        $query = $this->db->insert('users', $data);
        $lastid = $this->db->insert_id();
        if ($query) {
            
            //send sms
            $this->smssend($lastid, '995'.$this->phone, $this->smscode);
            return $lastid;
        } else {
            return false;
        }
    }
    
    //momxmareblis shemocmeba 
    public function CheckLogin($mail, $password) {
        $this->db->where('email', $mail);
        $this->db->where('password', $password);
        $query = $this->db->get('users');
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
    
    
    // profilis amogeba
    public function getProfile() {
        $this->db->where('id', $this->session->userdata('id'));
        return $this->db->get('users')->row();
    }
    
    public function getProfileMail($mail) {
        $this->db->where('email', $mail);
        return $this->db->get('users')->row();
    }
    
    
    //parolis shecvla
    public function passChange($userId) {
        //Password generation
        $this->oldpass = $this->getPassword($this->session->userdata('email'), $this->input->post('password'));
        $this->dbpass = $this->getProfile($userId)->password;
        $this->newpass = $this->input->post('new-password');
        $this->repeatpass = $this->input->post('re-passwword');

        if ($this->oldpass == $this->dbpass) {//ძველი პაროლის შემოწმება და ახალის გენერაცია
            if ($this->newpass != $this->repeatpass) {//განმეორებითი პაროლის შემოწმება
                $message = '<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>შეცდომა: ახალი პაროლი და განმეორებითი პაროლი არ ემთხვევა ერთმანეთს!</div>';
            } else {
                //ახალი პაროლის გენერაცია გენერაცია
                $this->password = $this->getPassword($this->session->userdata('personalID'), $this->newpass);
                $data = array(
                    'password' => $this->password,
                );
                $this->db->where('id', $userId);
                $this->db->where('password', $this->oldpass);
                $query = $this->db->update('users', $data);
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
    
    //profilis redaqtireba
    public function editProfile() { 
        $data = array( 
            'gender' => $this->input->post('gender'),
            'birth' => $this->input->post('inputDay')."-".$this->input->post('inputMonth')."-".$this->input->post('inputYear')
        );
        $this->db->where('email', $this->input->post('email'));
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    
    //parolis shecvla
    public function passremember($mail,$password) {
        $this->user = $this->getProfileMail($mail);
        $this->smscode = $password;
        
        $this->password = $password;
        $this->salt = $this->user->salt;
        $this->password = $this->setPassword($this->password,$this->salt);

        $this->mail = $mail;
        
        
                //ახალი პაროლის გენერაცია
                $data = array(
                    'password' => $this->password,
                );

                $this->db->where('email', $mail);

                $query = $this->db->update('users', $data);

                if ($query) {
                  return TRUE;
                } else {
                   return FALSE;
                }
       
    }
    
    
    
    //ganacxadebis amogeba da dzebna
    public function getAdminData($active = false, $sort = 'id desc') {
        $this->active =  $active;

        $this->searchID = $this->input->get('searchID');
        $this->firstname = $this->input->get('firstname');
        $this->lastname = $this->input->get('lastname');
        $this->personalID = $this->input->get('personalID');
        $this->phone = $this->input->get('phone');
        $this->amountlow = $this->input->get('amountlow');
        if (!$this->amountlow) {
            $this->amountlow = 0;
        }
        $this->amounthigh = $this->input->get('amounthigh');
        if (!$this->amounthigh) {
            $this->amounthigh = 99999999999999999;
        }
        $this->percentlow = $this->input->get('percentlow');
        if (!$this->percentlow) {
            $this->percentlow = 0;
        }
        $this->percenthigh = $this->input->get('percenthigh');
        if (!$this->percenthigh) {
            $this->percenthigh = 9999999999;
        }

        $this->status = $this->input->get('status');
        $this->negative = $this->input->get('negative');
        $this->mizani = $this->input->get('mizani');
        $this->interes = $this->input->get('interes');
        $this->loanType = $this->input->get('loanType');
        
        $this->startdate = $this->input->get('startdate');
        $this->enddate = $this->input->get('enddate');
        if($this->startdate){
        $this->db->where('date >=', date('Y-m-d 00:00:00',strtotime($this->startdate)));
        }
        if($this->enddate){
        $this->db->where('date <=', date('Y-m-d 00:00:00',strtotime($this->enddate)));
        }
        if ($this->searchID) {
            $this->db->where('id', $this->searchID);
        }
        if ($this->firstname) {
            $this->db->like('firstname', $this->firstname);
        }
        if ($this->lastname) {
            $this->db->like('lastname', $this->lastname);
        }
        if ($this->personalID) {
            $this->db->like('personalID', $this->personalID);
        }
        if ($this->phone) {
            $this->db->like('phone', $this->phone);
        }

        

        if($this->active){
            $this->db->where('active', 1);
        }
        
        $this->db->order_by($sort);
        
        return $this->db->get('users')->result();
    }

    //ganacxadebis raodenobis amogeba
    public function Adminrecord_count($active = FALSE) {
        $this->active =  $active;
        $this->searchID = $this->input->get('searchID');
        $this->firstname = $this->input->get('firstname');
        $this->lastname = $this->input->get('lastname');
        $this->personalID = $this->input->get('personalID');
        $this->phone = $this->input->get('phone');
        

        $this->status = $this->input->get('status');
        



        $this->startdate = $this->input->get('startdate');
        $this->enddate = $this->input->get('enddate');
        if($this->startdate){
        $this->db->where('date >=', date('Y-m-d 00:00:00',strtotime($this->startdate)));
        }
        if($this->enddate){
        $this->db->where('date <=', date('Y-m-d 00:00:00',strtotime($this->enddate)));
        }
        if ($this->searchID) {
            $this->db->where('id', $this->searchID);
        }
        if ($this->firstname) {
            $this->db->like('firstname', $this->firstname);
        }
        if ($this->lastname) {
            $this->db->like('lastname', $this->lastname);
        }
        if ($this->personalID) {
            $this->db->like('personalID', $this->personalID);
        }
        if ($this->phone) {
            $this->db->like('phone', $this->phone);
        }
        
        if ($this->status) {
            $this->db->where('status', $this->status);
        }
        
        
        if($active){
            $this->db->where('active', 1);
        }
        
        $data = $this->db->get('users')->num_rows();
        return $data;
    }
    
    
    //momxmareblis redaqtireba
    public function editUser() {
        // [username][company][name][email][phone][location]
        
        
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'personalID' => $this->input->post('personalID'),
            'phone' => $this->input->post('phone'),
            'email' => $this->input->post('email'),
            'birth' => $this->input->post('birth'),
        );
        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    //users
    public function deleteUser($userId) {
        $this->db->where('id', $userId);
        $data = $this->db->delete('users');
        if($data){
            return TRUE;
        }else{
            return FALSE;
        }
    }
    
    public function getUser($userId) {
        $this->db->where('id', $userId);
        return $this->db->get('users')->row();
    }
    
    public function getUserBYpersonal($personalId) {
        $this->db->where('personalID', $personalId);
        return $this->db->get('users')->row();
    }
    
    public function changeUserPassword($userId,$pass) {
        
        $this->salt = $this->getSaltById($userId);
        $this->password = $this->setPassword($pass,$this->salt);
        
        $data = array(
            'password' => $this->password,
        );
        $this->db->where('id', $userId);
        $query = $this->db->update('users', $data);
        if ($query) {
            $userdat = $this->getUser($userId);
            $message = 'Tqvni paroli sistemashi shesasvlelad: '.$pass;
            //send sms
            
            return true;
        } else {
            return false;
        }
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
    
    public function editAdmin($id) {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'username' => $this->input->post('username'),
            'email' => $this->input->post('email'),
            'user_type' => $this->input->post('user_type'),
        );
        $this->db->where('id', $id);
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
    
    public function genderchack($param) {
        switch ($param) {
            case "M":
                return "მამრობითი";

                break;
            case "F":
                return "მდედრობითი";

                break;

            default:
                return "არ არის მითითებული";
                break;
        }
    }
    
    /////////////////////////////////
    //SMS MARADIT
    ////////////////////////////////
    // SMS activaciis kodis gagzavna
 //    public function smssend($user_id,$phone,$code){
 //        $maradit = new Maradit("hippo", "654555");
        
 //        $to_list = array($phone);
 //        $message = 'activaciis codi da sistemis paroli:'.$code.'. Gisurvebt warmatebas.';
 //        $from = 'Hippo';       
	// $data_coding = 'Default';
        
 //        $response = $maradit->submit($to_list, $message, $from, null, null, $data_coding);
        
 //        if($response->status){
 //            //print_r($response);
 //            $this->db->where('user_id',$user_id);
 //            $this->db->delete('sms_log');
 //            $data = array(
 //                'user_id' => $user_id,
 //                'phone' => $phone,
 //                //'callback' => $response->payload->Status->Code,
 //                //'Description' => $response->payload->Status->Description,
 //                'smsid' => $response->payload->MessageId
 //            );
 //            $query = $this->db->insert('sms_log',$data);
 //            if($query){
 //                $this->db->where('user_id',$user_id);
 //                $this->db->delete('sent_sms');
 //                $dat = array(
 //                    'user_id' => $user_id,
 //                    'phone' => $phone,
 //                    'smscode' => $code,
 //                    'smsid' => $response->payload->MessageId
 //                );
 //                $this->db->insert('sent_sms',$dat);
 //                return TRUE;
 //            }else{
 //                return FALSE;
 //            }

	// }
	// else{
 //            $this->db->where('user_id',$user_id);
 //            $this->db->delete('sms_log');
 //            $data = array(
 //                'user_id' => $user_id,
 //                'phone' => $phone,
 //                //'shecdoma' => $response->error
                
 //            );
 //            $query = $this->db->insert('sms_log',$data);
 //            return FALSE;
	// 	//echo "Client error: $response->error";	
	// } 
 //    }
    
    public function customsmssend($user_id,$phone,$code,$message){
        $maradit = new Maradit("hippo", "654555");
        
        $to_list = array($phone);
        
        $from = 'Hippo';       
	$data_coding = 'Default';
        
        $response = $maradit->submit($to_list, $message, $from, null, null, $data_coding);
        
        if($response->status){
            //print_r($response);
            $this->db->where('user_id',$user_id);
            $this->db->delete('sms_log');
            $data = array(
                'user_id' => $user_id,
                'phone' => $phone,
                //'callback' => $response->payload->Status->Code,
                //'Description' => $response->payload->Status->Description,
                'smsid' => $response->payload->MessageId
            );
            $query = $this->db->insert('sms_log',$data);
            if($query){
                $this->db->where('user_id',$user_id);
                $this->db->delete('sent_sms');
                $dat = array(
                    'user_id' => $user_id,
                    'phone' => $phone,
                    'smscode' => $code,
                    'smsid' => $response->payload->MessageId
                );
                $this->db->insert('sent_sms',$dat);
                return TRUE;
            }else{
                return FALSE;
            }

	}
	else{
            $this->db->where('user_id',$user_id);
            $this->db->delete('sms_log');
            $data = array(
                'user_id' => $user_id,
                'phone' => $phone,
                //'shecdoma' => $response->error
                
            );
            $query = $this->db->insert('sms_log',$data);
            return FALSE;
		//echo "Client error: $response->error";	
	} 
    }
    
    //gagzavnili SMSis amogeba CRM useris monacemit
    public function getUserSms($userId) {
        $this->db->where('user_id', $userId);
        return $this->db->get('sent_sms')->row();
    }
    
     //SMS aqtivacia
    public function smsActivate($userId) {
        $data = array(
                'activation' => 1,
                'status' => 1,
            );
        $this->db->where('id', $userId);
        $query = $this->db->update('users',$data);
        if($query){
                return TRUE;
            }else{
                return FALSE;
            }
    }
    
    ///////////////////////////////////
    //END SMS MARADIT
    ////////////////////////////////////
    
    
    //work
    public function getWorks() {
        return $this->db->get('work')->result();
    }
    
    public function getWork($id) {
        $this->db->where('id',$id);
        return $this->db->get('work')->row()->title_geo;
    }
    
    
    //sallary
    public function getsallarys() {
        return $this->db->get('sallary')->result();
    }
    
    public function getsallary($id) {
        $this->db->where('id',$id);
        return $this->db->get('sallary')->row()->title_geo;
    }
    
    public function getThisMonthBalanse($id) {
        
        $dat = strtotime("+31 day");
        $now = time();
        
        $this->db->where('debtdate >=', $now);
        $this->db->where('debtdate <=', $dat);
        $this->db->where('user_id',$id);
        return $this->db->get('transactions')->result();
        
    }
    
    public function getAllMonthBalanse() {
        
        $dat = strtotime("+25 day");
        $now = time();
        
        //$this->db->where('date >=', $now);
        $this->db->where('date <=', $dat);
        return $this->db->get('grafiki')->result();
        
    }
    public function ChkTransactions($user,$order,$ordID) {
        $this->db->where('user_id', $user);
        $this->db->where('order_id', $order);
        $this->db->where('debtdate', $ordID);
        $query = $this->db->get('transactions');
        if($query){
            return $query->num_rows();
        }else{
            return FALSE;
        }
    }
    public function ChkOrderStatus($user,$order) {
        $this->db->where('userid', $user);
        $this->db->where('order_id', $order);
        $this->db->where('status', 1);
        return $this->db->get('orderedcard')->num_rows();
    }
    public function insTransactions($user,$order,$ordID,$debt,$debtdate,$month) {
        $dat = array(
            'user_id' => $user,
            'month' => $month,
            'order_id' => $order,
            'ordID' => $ordID,
            'debt' => $debt,
            'debtdate' => $debtdate,
            'date' => time()
        );
        $this->db->insert('transactions',$dat);
    }
    
    public function getUserDebt($user) {
        
        $this->db->where('id',$user);
        return $this->db->get('users')->row();
    }
    
    public function UpdateUserDebt($user,$balanse) {
        
        $this->db->where('id',$user);
        $dat = array(
            'debt' => $balanse,
        );
        return $this->db->update('users',$dat);
    }
    
    
   
    
    public function getPayOrder($id,$order_id) {
        $this->db->where('userId',$id);
        $this->db->where('order_id',$order_id);
        return $this->db->get('orderedcard')->row();
        
    }
    
    
    //profilis redaqtireba
    public function editSiteUser($userId) {
        // [username][company][name][email][phone][location]


        
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'personalID' => $this->input->post('personalID'),
            'email' => $this->input->post('email'),
            'phone' => $this->input->post('phone'),
            'birth' => $this->input->post('birth'),
            'gender' => $this->input->post('gender'),
            'address' => $this->input->post('address'),
            'work' => $this->input->post('work'),
            'organisation' => $this->input->post('organisation'),
            'sallary' => $this->input->post('sallary'),
            'balanse' => $this->input->post('balanse'),
        );
        $this->db->where('id', $userId);
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    
    //ორგანიზაციები
    public function getOrgUser($userId) {
        $this->db->where('orgid', $userId);
        return $this->db->get('orgpersons')->row();
    }
    
    public function addagentorgs($password) {
        
        $this->smscode = $password;
        $this->phone = $this->input->post('phone');
        
        $this->password = $password;
        $this->salt = $this->setSalt();
        $this->password = $this->setPassword($this->password,$this->salt);
        $data = array(
            'orgid' => $this->input->post('orgid'),
            'orgname' => $this->input->post('orgname'),
            'orgaddress' => $this->input->post('orgaddress'),
            'officeaddress' => $this->input->post('officeaddress'),
            'email' => $this->input->post('email'),
            'phone' => $this->phone,
            'annual' => $this->input->post('annual'),
            'rule' => 1,
            'salt' => $this->salt,
            'password' => $this->password,
            'regdate' => time(),
            'firstlogin' => 1
            
        );
        
        $query = $this->db->insert('org', $data);
        $lastid = $this->db->insert_id();
        if ($query) {
            $this->addagentorgsPerson();
            //send sms
            $this->smssend($lastid, '995'.$this->phone, $this->smscode);
            return $lastid;
        } else {
            return false;
        }
    }
    
    public function addagentorgsPerson() {

        $data = array(
            'orgid' => $this->input->post('orgid'),
            'name' => $this->input->post('personname'),
            'personalID' => $this->input->post('personalID'),
            'birth' => $this->input->post('birth'),
            'phone' => $this->input->post('phone'),
            'address' => $this->input->post('personaddress'),
            'position' => $this->input->post('position'),
        );
        
        $query = $this->db->insert('orgpersons', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function addOrgUsers($password) {
        
        $this->smscode = $password;
        $this->phone = $this->input->post('phone');
        
        $this->password = $password;
        $this->salt = $this->setSalt();
        $this->password = $this->setPassword($this->password,$this->salt);
        $data = array(
            'orgid' => $this->input->post('orgid'),
            'orgname' => $this->input->post('orgname'),
            'orgaddress' => $this->input->post('orgaddress'),
            'officeaddress' => $this->input->post('officeaddress'),
            'email' => $this->input->post('email'),
            'phone' => $this->phone,
            'annual' => $this->input->post('annual'),
            'rule' => $this->input->post('ruleltd'),
            'salt' => $this->salt,
            'password' => $this->password,
            'regdate' => time(),
            'firstlogin' => 1
            
        );
        
        $query = $this->db->insert('org', $data);
        $lastid = $this->db->insert_id();
        if ($query) {
            $this->addagentorgsPerson();
            //send sms
            $this->smssend($lastid, '995'.$this->phone, $this->smscode);
            return $lastid;
        } else {
            return false;
        }
    }
    
    public function getSuccessOrderSum($id) {
        $this->db->where('userId',$id);
        $this->db->where('status', 1);
        return $this->db->get('orderedcard')->num_rows();
        
    }
    public function getUnSuccessOrderSum($id) {
        $this->db->where('userId',$id);
        $this->db->where('status', 2);
        return $this->db->get('orderedcard')->num_rows();  
    }
    
    public function getOrderPortfel($id) {
        $this->db->where('userId',$id);
        $this->db->where('status', 1);
        $this->db->select_sum('sum');
        return $this->db->get('orderedcard')->row()->sum;
        
    }
    
    public function getUserOrders($id) {
        $this->db->where('userId',$id);
        $this->db->where('status', 1);
        return $this->db->get('orderedcard')->result();
        
    }
    
    public function getUserGraficPortfel($user_id,$ordID) {
        $this->db->where('user_id', $user_id);
        $this->db->where('ordID', $ordID);
        $this->db->select_sum('price');
        return $this->db->get('grafiki')->row()->price;
        
    }
    public function getUserGraficPercent($user_id,$ordID) {
        $this->db->where('user_id', $user_id);
        $this->db->where('ordID', $ordID);
        $this->db->select_sum('procent');
        return $this->db->get('grafiki')->row()->procent;
        
    }
    public function getUserGraficPrincipal($user_id,$ordID) {
        $this->db->where('user_id', $user_id);
        $this->db->where('ordID', $ordID);
        $this->db->select_sum('dziri');
        return $this->db->get('grafiki')->row()->dziri;
        
    }
    
    public function getOrderProductSum($user_id,$ordID) {
        $this->db->where('user_id', $user_id);
        $this->db->where('order_id', $ordID);
        $this->db->select_sum('sum');
        return $this->db->get('order_products')->row()->sum;
        
    }
    
    public function getOrderProductNetSum($user_id,$ordID) {
        $this->db->where('user_id', $user_id);
        $this->db->where('order_id', $ordID);
        $this->db->select_sum('netsum');
        return $this->db->get('order_products')->row()->netsum;
        
    }
    
    public function updateGraf($lastid,$user) {
        $ord = $this->order_model->getOrderedCardById($lastid);
        
        $this->month = $ord->month;
        
        $this->sum = $this->getOrderProductSum($user,$lastid);
        $this->total = $this->sum;
        $this->netsum = $this->getOrderProductNetSum($user,$lastid);;
        $this->userId = $user;
        
        //$this->shipping = '1';
        //$this->totalsum = $this->input->post('totalsumShip');
        //$calc = $this->products_model->GetCalcById($product->calc_cat);
        //$this->sum = $this->calculator->sumprice($this->month,$this->price,$calc->rate,$pre);
         //$this->monthprice = $this->calculator->monthprice($this->month,$this->price,$calc->rate,$pre);
//         $lastOrderNumber = $this->getLastorderNumber();
//         
//         $this->orderNumber = $lastOrderNumber++;
         
         
        $ordarDate = $ord->ordarDate;
        $ordermonth = $this->month +1;
        
        $this->monthprice = number_format((float)$this->netsum/$this->month, 2, '.', '');
        $dziri = number_format((float)$this->total/$this->month, 2, '.', '');
        $nashti = $this->total;
        for($i=1; $i<=$ordermonth-1; $i++){ 
          $mon = $i -1;
          $date = strtotime("+".$mon." months",strtotime($ordarDate));
          $nashti -= $dziri;
         if($i == 1){
             $firstprice = $this->sum-($this->monthprice*($this->month-1));
             $procent = $firstprice-$dziri;
             
            $data = array(
                'price' => number_format((float)$firstprice, 2, '.', ''),
                'dziri' => $dziri,
                'procent' => $procent,
                'nashti' => number_format((float)$nashti, 1, '.', ''),
            );
         }else{
             $procent = $this->monthprice-$dziri;
             $data = array(

                'price' => $this->monthprice,
                 'dziri' => $dziri,
                 'procent' => $procent,
                 'nashti' => number_format((float)$nashti, 1, '.', ''),
            );
         }
        $query = $this->db->insert('grafiki',$data);
        }
        if($query){
            //$this->deleteCartById($this->item);
            return true;
        }else{
            return false;
        }
    }

    public function getUserFilmLists($id) {
        $this->db->order_by('date','desc');
        $this->db->where('userId',$id);
        return $this->db->get('playlists')->result();
    }

    public function deleteMovFromOtherLists() {
      
        $this->db->where('movie_id',$this->input->post('mov_id'));
        $this->db->where('user', $this->session->userdata('id'));

        if($this->db->delete('plist_movies')){
            return true;
        }else{
            return false;
        }
    }

    public function insertInUsersList() {
        $data = array(
            'listId' =>  $this->input->post('pl_id'),
            'movie_id' => $this->input->post('mov_id'),
            'user' => $this->session->userdata('id'),
        );
        
        $query = $this->db->insert('plist_movies', $data);
    }

    public function insertInNewUsersList($id) {
        $data = array(
            'listId' => $id ,
            'movie_id' => $this->input->post('movie'),
            'user' => $this->session->userdata('id'),
        );
        
        $query = $this->db->insert('plist_movies', $data);
        if($query){
            return true;

        }else{
            return false;
        }
    }

    public function insertListName() {
        $data = array(
            'name' =>  $this->input->post('name'),
            'userId' => $this->session->userdata('id'),
        );
        
        $query = $this->db->insert('playlists', $data);
        if($query){
            return $this->getUserListRow($this->db->insert_id());
        }
    }

    public function getUserListRow($id) {
        $this->db->where('ID', $id);
        return $this->db->get('playlists')->row();   
    }

    public function chekIfExists($movie , $listId) {
        $this->db->where('listId', $listId);
        $this->db->where('movie_id', $movie);
        $this->db->where('user', $this->session->userdata('id'));
        $query =  $this->db->get('plist_movies');
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }
    }

    public function insertInWatchlist() {
        $data = array(
            'movie_id' => $this->input->post('movie'),
            'user' => $this->session->userdata('id'),
        );
        
        $query = $this->db->insert('washlist', $data);
        if($query){
           return true; 
        }else{
            return false;
        }
    }


    public function deleteFromWatchlist() {
        $data = array(
            'movie_id' => $this->input->post('movie'),
            'user' => $this->session->userdata('id'),
        );
        $this->db->where($data);
        $query = $this->db->delete('washlist');
        if($query){
           return true; 
        }else{
            return false;
        }
    }

    public function chekIfIsInWlist($movie) {
        $this->db->where('movie_id', $movie);
        $this->db->where('user', $this->session->userdata('id'));
        $query =  $this->db->get('washlist');
        if($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }
    }


    public function getplaylists(){
        $this->db->select('t1.ID, t1.userID,t1.name, (SELECT COUNT(t2.ID) FROM plist_movies as t2 WHERE t2.listID = t1.ID) as sumlist, (SELECT t3.img FROM movies as t3,plist_movies as t4 WHERE t3.ID = t4.movie_id and t4.listID = t1.ID ORDER BY t3.ID LIMIT 1) as img');
        $this->db->from('playlists as t1');
        $this->db->order_by('t1.date', 'desc');
        $this->db->order_by('userId', $this->session->userdata('id'));

        return $this->db->get()->result(); 
    }

    public function getplaylistsPage(){
        $this->db->select('t1.ID, t1.userID,t1.name, (SELECT COUNT(t2.ID) FROM plist_movies as t2 WHERE t2.listID = t1.ID) as sumlist, (SELECT t3.img FROM movies as t3,plist_movies as t4 WHERE t3.ID = t4.movie_id and t4.listID = t1.ID ORDER BY t3.ID LIMIT 1) as img, ');
        $this->db->from('playlists as t1');
        $this->db->order_by('t1.date', 'desc');
        $this->db->LIMIT('3');
        $this->db->order_by('userId', $this->session->userdata('id'));

        return $this->db->get()->result(); 
    }

    public function getplaylistMovies($id) {
        $this->db->select('t2.ID,t2.name,t2.img, t2.year, t2.imdb, t2.durat, t2.genre_id, t2.director_id, t2.actor_id, t2.descrip, t2.view');
        $this->db->order_by('t1.date', 'desc');
        $this->db->where('t1.listId',$id );
        $this->db->from('movies as t2');
        $this->db->join('plist_movies as t1', 't1.movie_id = t2.ID', 'left');
        return $this->db->get()->result(); 
    }

    public function getwishlist(){
        $this->db->select('t2.ID,t2.name,t2.img, t2.year, t2.imdb, t2.durat, t2.genre_id, t2.director_id, t2.actor_id, t2.descrip, t2.view');
        $this->db->order_by('t1.date', 'desc');
        $this->db->where('user',$this->session->userdata('id') );
        $this->db->from('movies as t2');
        $this->db->join('washlist as t1', 't1.movie_id = t2.ID', 'left');
        return $this->db->get()->result(); 
    }

     public function getwishlistPage(){
        $this->db->select('t2.ID,t2.name,t2.img, t2.year, t2.imdb, t2.durat, t2.genre_id, t2.director_id, t2.actor_id, t2.descrip, t2.view');
        $this->db->order_by('t1.date', 'desc');
        $this->db->where('user',$this->session->userdata('id') );
        $this->db->from('movies as t2');
        $this->db->limit('6');
        $this->db->join('washlist as t1', 't1.movie_id = t2.ID', 'left');
        return $this->db->get()->result(); 
    }

    public function gethistory(){
        $this->db->distinct();
        $this->db->select('t2.ID,t2.name,t2.img, t2.year');
        $this->db->order_by('t1.date', 'desc');
        $this->db->where('userid',$this->session->userdata('id') );
        $this->db->from('movies as t2');
        $this->db->join('views as t1', 't1.movie_id = t2.ID', 'left');
        return $this->db->get()->result(); 
    }
    public function gethistoryPage(){
        $this->db->distinct();
        $this->db->select('t2.ID,t2.name,t2.img, t2.year');
        $this->db->order_by('t1.date', 'desc');
        $this->db->where('userid', $this->session->userdata('id') );
        $this->db->from('movies as t2');
        $this->db->limit('6');
        $this->db->join('views as t1', 't1.movie_id = t2.ID', 'left');
        return $this->db->get()->result(); 
    }

    public function countlists(){
        $this->db->select(' (SELECT COUNT(t2.ID) FROM playlists as t2 WHERE t2.userId = t1.id) as sumPlist, (SELECT COUNT(t3.ID) FROM washlist as t3 WHERE t3.user = t1.id) as sumWlist, (SELECT COUNT(t4.id) FROM views as t4 WHERE t4.userid = t1.id) as sumHlist,');
        $this->db->where('t1.id',$this->session->userdata('id') );
        $this->db->from('users as t1');

        return $this->db->get()->row(); 
    }

    public function avatarDelete() {
        $data = array(
            'img' => '',
        );
        $this->db->where('id', $this->session->userdata('id'));
        $query = $this->db->update('users', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
}
