<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class movies extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	
    public function __construct() {
        parent::__construct();
        $this->load->model('movies_model'); 
        $this->load->model('users_model'); 
        $this->load->library('pagination');
        $this->load->helper("url");
        $this->load->helper('date');
        $this->load->helper('text');
    }

	public function index(){


	}   

	public function view($id){
		$this->id=$id;
	
		$this->movies_model->addview($this->id);
		$data['single'] = $this->movies_model->getMovie($this->id);
		$data['filmlists'] = $this->users_model->getUserFilmLists($this->session->userdata('id'));
 		
		$data['account'] = $this->users_model->getProfile();
		$this->load->view('inc/head');
		$this->load->view('inc/header', $data);

		$this->load->view('single_movie', $data);
		$this->load->view('inc/footer');
		$this->load->view('inc/foot');
	}

	public function ajaxSlider($start=0,$limit=5,$type ='new'){
		$data['movies'] = $this->movies_model->getNewSerialData($start,$limit,$type);

		 $this->load->view('inc/ajaxslider',$data);
	}
        
	public function insertInUsersList(){
		$query1 = $this->users_model->deleteMovFromOtherLists();
		if ($query1) {
			$query = $this->users_model->insertInUsersList();

			if($query){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
		
	}

	public function insertListName(){
			
			$lastInserted = $this->users_model->insertListName();
			$query = $this->users_model->insertInNewUsersList($lastInserted->ID);
			if($query){
				$data=array('lastid' => $lastInserted->ID,
							'name' => $lastInserted->name,
					);
			}else{
				$data=array('lastid' => null,
							'name' => null,
					);
			}
		echo json_encode($data);
	}

	public function removeInUsersList(){
		$query1 = $this->users_model->deleteMovFromOtherLists();
		if ($query1) {
				return true;
		}else{
			return false;
		}
		
	}


	public function insertInWatchlist(){
			$query = $this->users_model->insertInWatchlist();
			if($query){
				return true;
			}else{
				return false;
			}
		
	}

	public function deleteFromWatchlist(){
			$query = $this->users_model->deleteFromWatchlist();
			if($query){
				return true;
			}else{
				return false;
			}
		
	}
        
        public function preview() {
            echo '{"genres":[],"actors":[{"actor":"\u10db\u10d4\u10da \u10d2\u10d8\u10d1\u10e1\u10dd\u10dc\u10d8","link":"http:\/\/net.adjara.com\/Actor\/main?id=489","image":"1","id":"489"},{"actor":"ERIN MORIARTY","link":"http:\/\/net.adjara.com\/Actor\/main?id=28781","image":"0","id":"28781"},{"actor":"\u10e3\u10d8\u10da\u10d8\u10d0\u10db \u10f0.\u10db\u10d4\u10e1\u10d8","link":"http:\/\/net.adjara.com\/Actor\/main?id=2704","image":"1","id":"2704"},{"actor":"ELISABETH R\u00f6HM","link":"http:\/\/net.adjara.com\/Actor\/main?id=27895","image":"1","id":"27895"},{"actor":"\u10e2\u10dd\u10db\u10d0\u10e1 \u10db\u10d0\u10dc\u10d8","link":"http:\/\/net.adjara.com\/Actor\/main?id=18931","image":"1","id":"18931"}],"countries":[{"country":"\u10e1\u10d0\u10e4\u10e0\u10d0\u10dc\u10d2\u10d4\u10d7\u10d8","id":"4"}]} ';
        }
        
        
        public function topslider() {
            header('Content-Type: application/json');
            $topmovies = $this->movies_model->dayvideos(16,300000);
            $js = array();
            $i=1;
            foreach($topmovies as $prod) {
                $prods['number'] = $i;
                $prods['id'] = $prod->ID;
                $prods['title'] = $prod->name;
                $prods['slogan'] = $prod->slogan;
                $prods['imdb'] = $prod->imdb;
                $prods['year'] = $prod->year;
                $prods['img'] = $prod->img;
                $prods['views'] = $prod->msum;
                
                $js[] = $prods;
                $i++;
            }
            $dat['items'] = $js;
            echo json_encode($dat);
        }
        
}
