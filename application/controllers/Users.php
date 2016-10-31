<?php



if (!defined('BASEPATH'))

    exit('No direct script access allowed');



class Users extends CI_Controller {



    private $username;

    private $password;

    private $ip;

    private $check_password;

    private $salt;

    private $user;

    private $remember;

    private $status;

    private $mail;





    public function __construct() {

        parent::__construct();



        $this->load->model('users_model');

        

        $this->load->library('form_validation');

        //$this->load->library('image_moo');

        $this->load->library('upload');

        $this->load->helper('file');
        

    }

    

    

    

    //crm momxmareblis damateba

    public function register() {

        $this->load->helper('string');

        $this->form_validation->set_error_delimiters('<small>', '</small>');

        $this->form_validation->set_rules('username', 'სახელი', 'trim|required');

        $this->form_validation->set_rules('email', 'ელ.ფოსტა', 'trim|required|valid_email|is_unique[users.email]');

        $this->form_validation->set_rules('inputDay', 'დაბადების რიცხვი', 'trim|required');

        $this->form_validation->set_rules('inputMonth', 'დაბადების თვე', 'trim|required');

        $this->form_validation->set_rules('inputYear', 'დაბადების წელი', 'trim|required');


        $this->form_validation->set_rules('gender', 'სქესი', 'trim|required');

        if ($this->form_validation->run()) {

                $this->password = $this->input->post('password');

                $query = $this->users_model->addusers($this->password);


                if ($query != FALSE) {

                    //send mail

                $mailfrom = 'etunachichua@yahoo.com';

                $namefrom = 'allanimes.net';

                $mailto = $this->input->post('email');

                $nameto = $this->input->post('username');

                $subject = "User registration";

                $tamplatelocation = "email/merchantReg";

                $dataarray = array(

                    'name' => $this->input->post("username"),

                    'email' => $this->input->post("email"),

                    'password' => $this->password,

                );

                $this->mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray);

                    

                    $data['status'] = 'success';

                    $data['redirect'] = 1;

                    $data['statusmessage'] = "<div class='alert alert-success'>წარმატებით დაემატა</div><h5>3 წუთის განმავლობაში თქვენ გამოგეგზავნათ SMS შეტყობინებით პაროლი რომლითაც შეძლებთ პროფილის აქტივაციას. გთხოვთ გადახვიდეთ ბმულზე <a href='" . base_url() . "home/smsActivation/" . $this->input->post('email') . "'>SMS აქტივაცია.</a></h5>";

                    

                }else{

                    $data['message'] = "<div class='alert alert-warning'>არ დაემატა</div>";

                }

            

        } else {

            $data['status'] = 'error';

            

            if(form_error('firstname')){

            $data['usernamemessage'] = '<small>სახელი არ შეგივსიათ</small>';



            }else{

                $data['firstnamemessage'] = null;

            }

            
            

            if(form_error('gender')){

            $data['gendermessage'] = '<small>სქესი არ აგირჩევიათ!!</small>';

            }else{

                $data['gendermessage'] = null;

            }

      

            if(form_error('email')){

            $data['emailmessage'] = '<small>ელ.ფოსტა არ შეგივსიათ  ან უკვე გამოყენებულია სისტემაში!!</small>';

            }else{

                $data['emailmessage'] = null;

            }

            

            if(form_error('inputDay')){

            $data['birthmessage'] = '<small>დაბადების რიცხი არ შეგივსიათ!!</small>';

            }else{

                $data['birthmessage'] = null;

            }


            if(form_error('inputMonth')){

            $data['birthmessage'] = '<small>დაბადების თვე არ შეგივსიათ!!</small>';

            }else{

                $data['birthmessage'] = null;

            }

            if(form_error('inputYear')){

            $data['birthmessage'] = '<small>დაბადების წელი არ შეგივსიათ!!</small>';

            }else{

                $data['birthmessage'] = null;

            }

            
            

            $data['message'] = "<div class='alert alert-danger'>გთხოვთ შეავსოთ ყველა აუცილებელი ველი!</div>";



        }



        echo json_encode($data);

    }







    

    //profilis smsit activacia

    public function smsactive() {

        $user = $this->users_model->getProfile($this->input->post('userid'));

        $sms = $this->users_model->getUserSms($user->id);



        $smscod = $this->input->post('code');

        if ($sms->smscode == $smscod) {

            $activate = $this->users_model->smsActivate($user->id);

            if($activate  == TRUE){

            

            $json = array(

                'userid' => $user->id,

                'code' => $this->input->post('code'),

                'message' => 'წარმაგებით გააქტიურდა',

                'status' => 1

            );

            }else{

                $json = array(

                'userid' => $user->id,

                'code' => $this->input->post('code'),

                'message' => 'პროფილი არ გააქტიურდა სცადეთ კიდევ ერთხელ',

                'status' => 0

            );

            }

        } else {

            $json = array(

                'code' => $this->input->post('code'),

                'message' => 'SMS კოდი არასწორია',

                'status' => 0

            );

        }

        echo json_encode($json);

    }

    

    //sistemashi shesvla

    public function login() {

        $this->mail = $this->input->post('email');

        $this->password = $this->input->post('password');

        $this->ip = $this->input->ip_address();

        


        $this->password = $this->users_model->getPassword($this->mail, $this->password);



        if (!$this->user = $this->users_model->CheckLogin($this->mail, $this->password)) {

            $data['status'] = 'error';

            $data['message'] = "<div class='alert alert-danger'>შეცდომა! გთხოვთ შეამოწმოთ  და პაროლი!</div>";

        } else {

            

            // $this->users_model->loginLog('userlogin', 'done', $this->user->id);

            // if($this->user->corp_id != 0){
            //     $corp = true;
            // }else{
            //     $corp = false;
            // }

            $this->session->set_userdata(array(

                'id' => $this->user->id,

                // 'personalID' => $this->user->personalID,

                'username' => $this->user->username,

                // 'personalID' => $this->user->personalID,

                'email' => $this->user->email,

                'firstlogin' => $this->user->firstlogin,
                // 'corp_id' => $this->user->corp_id,
                // 'corp' => $corp,
                'IsLoggedIn' => true

            ));

            $this->remember = $this->input->post('remember');

            if ($this->remember) {

                $this->session->set_userdata('remember', true);

            }
           $this->userfirstlogin = $this->session->userdata('firstlogin');
            $data['status'] = 'success';

        }    

        echo json_encode($data);

        // redirect('/home/index', 'refresh');
    }

    

    //sistemashi pirveli shesvla da parolis shecvlis motxovna

    public function firstlogin() {

        if ($this->session->userdata('id')) {

            $this->load->view('firstlogin');

        } else {

            redirect("home/authentication");

        }

    }



    //sistemidan gamosvla

    public function logout() {

        //$this->model_users->loginLog('logout', 'done', $this->session->userdata('id'));

        $this->session->unset_userdata('id');

        $this->session->unset_userdata('email');

        // $this->session->unset_userdata('personalID');

        $this->session->unset_userdata('IsLoggedIn');

        $this->session->unset_userdata('remember');

        $this->session->sess_destroy();

        $this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");

        $this->output->set_header("Pragma: no-cache");

        redirect('', 'refresh');

    }


    //proifili
    public function profile() {
        if ($this->session->userdata('id')) {
                $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));
                $this->load->view('inc/head',$data);
                $this->load->view('inc/header',$data);
                $this->load->view('profile',$data);
                $this->load->view('inc/footer',$data);
                $this->load->view('inc/foot',$data);
            
        } else {
            redirect("home");
        }
    }

    

    //profilis redaqtireba
    public function edit() {
        if ($this->session->userdata('id')) {
            if($this->session->userdata('status') == 'org'){
                $data['cats'] = $this->cats_model->getparents();
                $data['user'] = $this->users_model->getOrgProfile($this->session->userdata('id'));
                $data['person'] = $this->users_model->getOrgPerson($this->session->userdata('orgid'));
                $this->load->view('newsite/inc/head',$data);
                $this->load->view('newsite/inc/header',$data);
                $this->load->view('newsite/pages/ltd-profile-edit',$data);
                $this->load->view('newsite/inc/footer',$data);
                $this->load->view('newsite/inc/foot',$data);  
            }else{
                $data['cats'] = $this->cats_model->getparents();
                $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));
                $data['works'] = $this->users_model->getWorks();
                $data['sallary'] = $this->users_model->getsallarys();
                $this->load->view('newsite/inc/head',$data);
                $this->load->view('newsite/inc/header',$data);
                $this->load->view('newsite/pages/profile-edit',$data);
                $this->load->view('newsite/inc/footer',$data);
                $this->load->view('newsite/inc/foot',$data);
            }
            
        }else{
            redirect("home/authentication");
        }
    }
    
    //profilis redaqtireba
    public function profileEdit() {
        if ($this->session->userdata('id')) {
           
         
                $data['message'] = validation_errors('<div class="alert alert-warning"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
           
                $query = $this->users_model->editProfile();
                if ($query == true) {
                    $data['message'] = "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>წარმატებით დარედაქტირდა</div>";
                } else {
                    $data['message'] = "<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>არ დარედაქტირდა</div>";
                }
          

            echo json_encode($data);
        } else {
            redirect("/");
        }
    }

    //parolis shecvla
    public function passChange() {
        if ($this->session->userdata('id')) {
            if($this->session->userdata('status') == 'org'){
                $data['cats'] = $this->cats_model->getparents();
                $data['user'] = $this->users_model->getOrgProfile($this->session->userdata('id'));
                $data['person'] = $this->users_model->getOrgPerson($this->session->userdata('orgid'));
                $this->load->view('newsite/inc/head',$data);
                $this->load->view('newsite/inc/header',$data);
                $this->load->view('newsite/pages/ltd-password-change',$data);
                $this->load->view('newsite/inc/footer',$data);
                $this->load->view('newsite/inc/foot',$data); 
            }else{
                $this->form_validation->set_rules('oldpassword', 'Password', 'required');
                $this->form_validation->set_rules('newPassword', 'Password Confirmation', 'required');
                if ($this->form_validation->run() == FALSE) {
                    $message = validation_errors('<div class="alert alert-warning">', '</div>');
                } else {
                    $message = $this->model_users->passChange($this->session->userdata('id'));
                }

                $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));
                $this->load->view('newsite/inc/head',$data);
                $this->load->view('newsite/inc/header',$data);
                $this->load->view('newsite/pages/password-change',$data);
                $this->load->view('newsite/inc/footer',$data);
                $this->load->view('newsite/inc/foot',$data);
            }
            
            
            
        } else {
            redirect("/");
        }
    }
    
    //parolis shecvla
    public function passwordchange() {
        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('password', 'password', 'required');
            $this->form_validation->set_rules('new-password', 'new-password', 'required');
            $this->form_validation->set_rules('re-passwword', 're-passwword', 'required');
            if ($this->form_validation->run() == FALSE) {
                $data['message'] =  validation_errors('<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
            } else {
                $data['message'] = $this->users_model->passChange($this->session->userdata('id'));
            }
            
            echo json_encode($data);
        } else {
            redirect("home/authentication");
        }
        
        
    }
    
    public function ltdpasswordchange() {
        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('currentPassword', 'Current Password', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');
            if ($this->form_validation->run() == FALSE) {
                $data['message'] =  validation_errors('<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>', '</div>');
            } else {
                $data['message'] = $this->users_model->ltdpassChange($this->session->userdata('id'));
            }
            
            echo json_encode($data);
        } else {
            redirect("home/authentication");
        }
        
        
    }



    //logos shecvla

    public function logoEdit() {

        

            if (empty($_FILES['file']['name'])) {

                $img1 = $this->input->post('img');

            } else {

                $img2 = $_FILES['file']['name'];

                // Uploading the normale image

                $config['file_name'] = $img2;

                $config['upload_path'] = "uploads/logo/";

                $config['allowed_types'] = "gif|jpg|jpeg|png";



                $this->load->library('upload', $config);

                $this->upload->initialize($config);

                if (!$this->upload->do_upload('file')) {

                    echo $this->upload->display_errors();

                } else {

                    $finfo = $this->upload->data();

                    $configresize['image_library'] = 'gd2';

                    $configresize['source_image'] = $finfo['full_path'];

                    $configresize['width'] = 100;

                    $configresize['height'] = 100;



                    $this->image_lib->clear();

                    $this->image_lib->initialize($configresize);

                    $this->image_lib->resize();



                    $configThumb['image_library'] = 'gd2';

                    $configThumb['source_image'] = $finfo['full_path'];

                    $configThumb['maintain_ratio'] = FALSE;

                    $configThumb['width'] = 100;

                    $configThumb['height'] = 100;

                    $img_dim = getimagesize($finfo['full_path']);

                    list($thumb_width, $thumb_height) = $img_dim;

                    $configThumb['y_axis'] = ($thumb_height - 100) / 2;



                    if ($finfo['is_image'] == 1) {



                        $this->image_lib->clear();

                        $this->image_lib->initialize($configThumb);

                        $this->image_lib->crop();

                    }



                    $this->model_users->logoChange($this->session->userdata('id'), $finfo['file_name']);

                }

            }

    }

    

    //motxovnis dadstureba

    public function requestConfirm() {

        $this->base_id = $this->input->post('base_id');

        $sum = $this->input->post('sum');

        $this->active = $this->input->post('active');

        if ($this->model_users->statusUpdate($this->base_id)) {

            return true;

        } else {

            return false;

        }

    }

    

    public function mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray) {

        $this->load->library('email');

//            $dat = array(

//                'name' => $name,

//                'email' => $email,

//                'code' => $code,

//                'pass' => $pass,

//            );

//            $config['protocol'] = 'sendmail';

//            $config['mailpath'] = '/usr/sbin/sendmail';

//            $config['charset'] = 'utf-8';

//            $config['wordwrap'] = TRUE;

//            $config['mailtype'] = 'html';

//        $config['newline'] = '';

//        $this->email->initialize($config);



        $this->email->from($mailfrom, $namefrom);

        $this->email->to($mailto, $nameto);



        $this->email->subject($subject);



        $html = $this->load->view($tamplatelocation, $dataarray, TRUE);

//                    $tpl_find = array ( '{NAME}','{EMAIL}','{CODE}','{PASS}');

//                    $tpl_replace = array ($name,$email,$code,$passwordi);

//                    $msg = file_get_contents("msg.txt");

// 

//                    $msgg = str_replace ($tpl_find,$tpl_replace, $msg );

        $this->email->message($html);



        $this->email->send();

    }

    

    

    //proifili

    public function orders() {

        if ($this->session->userdata('id')) {

            $data['cats'] = $this->cats_model->getparents();

            $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));

            

            $data['orders'] = $this->cart_model->getOrderedCards();
            $data['instal'] = $this->cart_model->getOrderedCards();
            $data['rent'] = $this->cart_model->getOrderedCards();
            $data['rentplus'] = $this->cart_model->getOrderedCards();
            $data['deals'] = $this->cart_model->getDealOrderedCards();

            $data['successorders'] = $this->cart_model->getSuccessOrders();

            $data['unsuccessorders'] = $this->cart_model->getUnSuccessOrders();

            

            $data['title'] = 'იჯარა შესყიდვით';

            $this->load->view('newsite/inc/head',$data);
            $this->load->view('newsite/inc/header',$data);
            $this->load->view('newsite/pages/account',$data);
            $this->load->view('newsite/inc/footer',$data);
            $this->load->view('newsite/inc/foot',$data);
        } else {

            redirect("home/authentication");

        }

    }

    

    //proifili

    public function rentorders() {

        if ($this->session->userdata('id')) {

            $data['cats'] = $this->cats_model->getparents();

            $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));

            $data['title'] = 'იჯარა';

            $data['orders'] = $this->cart_model->getSentRentOrders();

            $data['successorders'] = $this->cart_model->getSuccessRentOrders();

            $data['unsuccessorders'] = $this->cart_model->getUnSuccessRentOrders();

            //$data['cities'] = $this->crm_model->cityResult();

            $this->load->view('parts/section/head', $data);

            $this->load->view('parts/navigation/top-menu-bar', $data);

            $this->load->view('parts/section/header-2', $data);

            //$this->load->view('parts/breadcrumb/breadcrumb-profile');

            $this->load->view('pages/orders',$data);

            $this->load->view('parts/section/footer');

            $this->load->view('parts/section/foot');

        } else {

            redirect("home/authentication");

        }

    }

    

    //proifili

    public function fullorders() {

        if ($this->session->userdata('id')) {

            $data['cats'] = $this->cats_model->getparents();

            $data['user'] = $this->users_model->getProfile($this->session->userdata('id'));

            $data['title'] = 'შესყიდვა';

            $data['orders'] = $this->cart_model->getSentRentOrders();

            $data['successorders'] = $this->cart_model->getSuccessRentOrders();

            $data['unsuccessorders'] = $this->cart_model->getUnSuccessRentOrders();

            //$data['cities'] = $this->crm_model->cityResult();

            $this->load->view('parts/section/head', $data);

            $this->load->view('parts/navigation/top-menu-bar', $data);

            $this->load->view('parts/section/header-2', $data);

            //$this->load->view('parts/breadcrumb/breadcrumb-profile');

            $this->load->view('pages/orders',$data);

            $this->load->view('parts/section/footer');

            $this->load->view('parts/section/foot');

        } else {

            redirect("home/authentication");

        }

    }

    

    

    //parolis ganaxleba

    public function rememberPass() {

        $this->load->helper('string');

        

            $this->form_validation->set_rules('email','email', 'required');

            

            if ($this->form_validation->run() == FALSE) {

                if(form_error('email')){

                    $data['message'] = '<div class="alert alert-warning fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>შეცდომა:მეილი არ შეგივსიათ!!</div>';

                }else{

                    $data['message'] = null;

                }

            } else {

                $this->password = random_string('numeric', 6);

                $this->mail = $this->input->post('email');

                $query = $this->users_model->passremember($this->mail,$this->password);

                if($query){
                    //send mail

                    $mailfrom = $this->mail;

                    $namefrom = 'allanimes.net';

                    $mailto = $this->mail;

                    $subject = "User recover password";
                    
                    $nameto = "";

                    $tamplatelocation = "email/changePass";

                    $dataarray = array(

                        'email' =>$this->mail,

                        'password' => $this->password,

                    );

                $this->mailSend($mailfrom, $namefrom, $mailto, $nameto, $subject, $tamplatelocation, $dataarray);

                    

                    $data['status'] = 'success';

                    $data['redirect'] = 1;


                }

            }
            echo json_encode($data);

    }

    

    

    public function trans() {

        

        $banalses = $this->users_model->getAllMonthBalanse();

        foreach ($banalses as $balanse) {

            echo $balanse->ordID."<br/>";

            $checkorder = $this->order_model->CheckSuccessOrders($balanse->ordID);

            if($checkorder > 0){

            

            $count = $this->users_model->ChkTransactions($balanse->user_id,$balanse->ordID,$balanse->date);

            if($count <=0){

                echo $balanse->price."-".date("d/m/Y",$balanse->date)."<br/>";

                $this->users_model->insTransactions($balanse->user_id,$balanse->order_id,$balanse->ordID,$balanse->price,$balanse->date);

                $u = $this->users_model->getUserDebt($balanse->user_id);

                $debt = $u->debt-$balanse->price;

                $this->users_model->UpdateUserDebt($balanse->user_id,$debt); 

                

            }

            }

            

        }

    }


     public function userLists() {
        $data['playlists'] = $this->users_model->getplaylists();
         $data['account'] = $this->users_model->getProfile();
        $this->load->view('inc/head');
        $this->load->view('inc/header', $data);
        $this->load->view('userLists', $data);
        $this->load->view('inc/footer');
        $this->load->view('inc/foot');
     }

     public function listdetail($id) {

        $this->id = $id;
        $data['lmovies'] = $this->users_model->getplaylistMovies($this->id);
        $data['list'] = $this->users_model->getUserListRow($this->id);
        $data['account'] = $this->users_model->getProfile();
        $this->load->view('inc/head');
        $this->load->view('inc/header', $data);
        $this->load->view('listdetail', $data);
        $this->load->view('inc/footer');
        $this->load->view('inc/foot');
     }

     public function wishlist() {
        $data['wishlist'] = $this->users_model->getwishlist();
         $data['account'] = $this->users_model->getProfile();
        $this->load->view('inc/head');
        $this->load->view('inc/header', $data);
        $this->load->view('wishlist', $data);
        $this->load->view('inc/footer');
        $this->load->view('inc/foot');
     }

     public function history() {
        $data['history'] = $this->users_model->gethistory();
         $data['account'] = $this->users_model->getProfile();
        $this->load->view('inc/head');
        $this->load->view('inc/header', $data);
        $this->load->view('history', $data);
        $this->load->view('inc/footer');
        $this->load->view('inc/foot');
     }

     public function mypage() {
        $data['playlists'] = $this->users_model->getplaylistsPage();
        $data['wishlist'] = $this->users_model->getwishlistPage();
        $data['history'] = $this->users_model->gethistoryPage();
        $data['countlists'] = $this->users_model->countlists();
        $data['account'] = $this->users_model->getProfile();
        $data['months'] = $this->months();
        
        $this->load->view('inc/head');
        $this->load->view('inc/header', $data);
        $this->load->view('mypage', $data);
        $this->load->view('inc/footer');
        $this->load->view('inc/foot');
     }
     
    public function months(){
        $arr = array(
            '01'=> 'Enero',
            '02'=> 'Febrero',
            '03'=> 'March',
            '04'=> 'Abril',
            '05'=> 'Mayo',
            '06'=> 'Junio',
            '07'=> 'Julio',
            '08'=> 'Agosto',
            '09'=> 'Setiembre',
            '10'=> 'Octubre',
            '11'=> 'Noviembre',
            '12'=> 'Diciembre',
        );
        return $arr;
    }
    public function avatarDelete() {
        $query = $this->users_model->avatarDelete();
       if ($query) {
           return true;
       }else{
        return false;
       }
     }
}

