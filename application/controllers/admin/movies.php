<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class movies extends CI_Controller {

    private $username;
    private $password;
    private $ip;
    private $check_password;
    private $salt;
    private $user;
    private $remember;
    private $status;
    private $userid;

    public function __construct() {
        parent::__construct();
        include APPPATH . 'third_party/IMDB-Grabber/imdb.class.php';
        $this->load->model('movies_model');
        $this->load->model('actors_model');
        $this->load->model('languages_model');
        $this->load->model('quality_model');
        $this->load->model('servers_model');
        $this->load->model('directors_model');
        $this->load->model('genre_model');
        
        $this->load->library('form_validation');
        
        $this->load->library('upload');
        $this->load->helper('file');
        $this->load->library('image_lib');
        $this->load->library('pagination');
        $this->load->model('options');
        $this->load->helper("url");
        $this->load->helper('date');
    }
    
    public function index() {
        if ($this->session->userdata('is_admin_login')) {

       
        $data['movies'] = $this->movies_model->getMovieData();

            $this->load->view('admin/movies/main',$data);
            
        } else {
            redirect("admin");
        }
    }
    
    //CRM msaxiobis redaqtireba
    public function edit($userid) {
        $this->userid = $userid;
        if ($this->session->userdata('id')) {

            $data['movies'] = $this->movies_model->getMovie($this->userid);
            $data['directors'] =  $this->movies_model->getDirectorData ();
        	$data['genres'] =  $this->movies_model->getGenreData ();
        	$data['producers'] =  $this->movies_model->getProducersData ();
        	$data['actors'] =  $this->actors_model->getActorData ();
            $data['languages'] =  $this->languages_model->getLanguagesData ();
            $data['qualities'] =  $this->quality_model->getQualityData ();
            $data['servers'] =  $this->servers_model->getServersData ();
            // $data['lastid'] = $this->movies_model->insertedID();

           	$data['trailer'] = $this->movies_model->getTrailer($data['movies']->ID);
            $this->load->view('admin/movies/edit',$data);
        } else {
            redirect('/');
        }
    }
    
    //CRM momxmareblis redaqtireba
    public function editdata() {

        if ($this->session->userdata('id')) {
            $this->form_validation->set_rules('name', 'სახელი', 'required');
            
            if ($this->form_validation->run() == FALSE) {
                $data['status'] = 'error-notice';
                $data['message'] = validation_errors();
            } else {
               

                $query = $this->movies_model->editMovie();



                if ($query == true) {
                    //send mail
                    $data['status'] = 'success-notice';
                    $data['message'] = "წარმატებით დარედაქტირდა";
                    $data['message2'] = $this->input->post('img');
                } else {
                    $data['status'] = 'error-notice';
                    $data['message'] = "არ დარედაქტირდა";
                }
            }

            echo json_encode($data); ;
        } else {
            redirect('/');
        }
    }


    
    public function delete() {
        $this->actorid = $this->input->get('id');
        if ($this->movies_model->deleteMovie($this->actorid) == true) {
            return true;
        } else {
            return FALSE;
        }
    }
   public function onlinemoviedelete() {
        $this->id = $this->input->post('id');
        if ($this->movies_model->onlinemoviedelete($this->id)) {
            $data['result'] = $this->movies_model->getonlinemovie($this->input->post('id'));
            return $this->load->view('admin/inc/onlinemovie', $data);
        } else {
            return FALSE;
        }
    }


    
    public function add() {
        
        if ($this->session->userdata('is_admin_login')) {

        	$data['directors'] =  $this->movies_model->getDirectorData ();
        	$data['genres'] =  $this->movies_model->getGenreData ();
        	$data['producers'] =  $this->movies_model->getProducersData ();
        	$data['actors'] =  $this->actors_model->getActorData ();
            $data['languages'] =  $this->languages_model->getLanguagesData ();
            $data['qualities'] =  $this->quality_model->getQualityData ();
            $data['servers'] =  $this->servers_model->getServersData ();
            $data['lastid'] = $this->movies_model->insertedID();

            $this->load->view('admin/movies/add', $data);
        } else {
            redirect('/');
        }
    }



    public function adddata() {
        $this->load->helper('string');
        if ($this->session->userdata('is_admin_login')) {
            $this->form_validation->set_rules('name', 'სახელი', 'trim|required');
       
            if ($this->form_validation->run() == FALSE) {
                $data = array(
                        'massage' => validation_errors('<div class="alert alert-warning">', '</div>'),
                    );
                
            } else {

                $query = $this->movies_model->addMovie();
            }

  
        } else {
            redirect('/');
        }
    }



     public function addonlinemovie() {
        if ($this->movies_model->add_onlinemovie()) {

            $data['result'] = $this->movies_model->getonlinemovie($this->input->post('id'));
            //$data['result'] = $this->load->view('admin/inc/torrentlink',$dat);
            $data['text'] = 'Sucess Add';

            return $this->load->view('admin/inc/onlinemovie', $data);
        } else {
            return FALSE;
        }
    }


    public function addtorrent() {
        if ($this->movies_model->addtorrent()) {

            $data['result'] = $this->movies_model->gettorrent($this->input->post('id'));
            //$data['result'] = $this->load->view('admin/inc/torrentlink',$dat);
            $data['text'] = 'Sucess Add';

            return $this->load->view('admin/inc/torrentlink', $data);
        } else {
            return FALSE;
        }
    }


    public function directedAddModal() {
        if ($this->directors_model->addDirector() != false) {
            $json = array(
                'id' => $this->directors_model->lastDirector()->ID,
                'title' => $this->directors_model->lastDirector()->name,
            );
        }
        echo json_encode($json);
    }


     public function genreAddModal() {
        if ($this->genre_model->addactor() != false) {
            $json = array(
                'id' => $this->genre_model->lastGenre()->ID,
                'text' => $this->genre_model->lastGenre()->name,
            );
        }
        echo json_encode($json);
    }



     public function actorAddModal() {
        if ($this->actors_model->addactor() != false) {
            $json = array(
                'id' => $this->actors_model->lastGenre()->ID,
                'text' => $this->actors_model->lastGenre()->name,
            );
        }
        echo json_encode($json);
    }
 
    public function imdb() {
       
        $title = $this->input->post('title');
        

        $oIMDB = new IMDB($title);
        if($oIMDB->isReady) {
            $getall = $oIMDB->getAll();
            //echo '<p><a href="' . $oIMDB->getUrl() . '">' . $oIMDB->getTitle() . '</a> got rated ' . $oIMDB->getRating() . '.</p><br/>';
            $data['director'] = $oIMDB->getDirector();
            $cast = explode(" / ",$oIMDB->getCast($iLimit = 0, $bMore = true));
            foreach ($cast as $value) {
                if($this->actors_model->checkName($value) == 0){
                    $castid  = $this->actors_model->insertActor($value);
                    $castinsert[] = array("id"=>$castid,"name"=>$value);
                    $casts[] = $castid;
                }else{
                    $castid  = $this->actors_model->getByName($value)->ID;
                    $castinsert[] = array("id"=>$castid,"name"=>$value);
                    $casts[] = $castid;
                }
            }
            
            //var_dump($castinsert);
            $data['cast'] = $casts;
            $data['castinsert'] = $castinsert;
            $data['rating'] = $oIMDB->getRating();
            $data['release'] = $oIMDB->getReleaseDate();
            $data['runtime'] = $oIMDB->getRuntime();
            $data['imdbLink'] = $oIMDB->getUrl();
            $data['creator'] = $oIMDB->getCompany();
            $data['tagline'] = $oIMDB->getTagline();
            $data['keywords'] = str_replace(" / ", ",", $oIMDB->getPlotKeywords());
            
            $ganre = explode(" / ",$oIMDB->getGenre());
            foreach ($ganre as $v) {
                if($this->movies_model->checkGenreName($v) == 0){
                    $ganreid  = $this->movies_model->insertGenre($v);
                    $ganreinsert[] = array("id"=>$ganreid,"name"=>$v);
                    $ganres[] = $ganreid;
                }else{
                    $ganreid  = $this->movies_model->getGenreByName($v)->ID;
                    $ganreinsert[] = array("id"=>$ganreid,"name"=>$v);
                    $ganres[] = $ganreid;
                }
            }
            $data['ganre'] = $ganres;
            $data['ganreinsert'] = $ganreinsert;
            $data['trailer'] = $oIMDB->getTrailerAsUrl($bEmbed = false);
<<<<<<< HEAD
            $data['poster'] = $oIMDB->getPoster($sSize = 'big', $bDownload = false);
            print_r($data['poster']);
=======
            
            //print_r($bMore);
>>>>>>> origin/master
            }else {
                $data['director'] = '';
                $data['cast'] = '';
            }
        echo json_encode($data);
        
    }
    

}
