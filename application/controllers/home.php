<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	private $period;

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
        $this->load->model('blog_model'); 
                $this->load->model('users_model');
        $this->load->library('pagination');
        $this->load->helper("url");
        $this->load->helper('date');
        $this->load->helper('text');
        // $this->output->enable_profiler(true);
    }

	public function index(){

		$data['recomMovies'] = $this->movies_model->getRecomendMovieData(); 
		$data['viewMovies'] = $this->movies_model->getViewMovieData();
		$data['newMovies'] = $this->movies_model->getLastAddedMovieData();
        $data['sliders'] = $this->sliders_model->getSliderData(); 
        $data['blogs'] =  $this->blog_model->getBlogDataLimit(); 
        $data['genreAll'] =  $this->movies_model->getGenreDataLimit(); 
        $data['newSerial'] =  $this->movies_model->getNewSerialData(); 
        $data['topSerial'] =  $this->movies_model->getNewSerialData(0,5,'top'); 
        $data['topmovies'] =  $this->movies_model->getNewSerialData(0,5,'new'); 
		$data['account'] = $this->users_model->getProfile();
        // $data['daymovies'] = $this->movies_model->dayvideoid(false,11,9000);
       	$data['daymovies'] = $this->movies_model->dayvideos(11,1);

       	$data['weekmovies'] = $this->movies_model->dayvideos(11,7);

       	$data['monthmovies'] = $this->movies_model->dayvideos(11, 30);

       	$data['toptolalmovies'] = $this->movies_model->dayvideos(11, 365);
	
		$data['daymoviesSlider'] = $this->movies_model->dayvideos(35,1);

		$this->load->view('inc/head');
		$this->load->view('inc/header', $data);
		$this->load->view('inc/slider', $data);
		$this->load->view('index', $data);
		$this->load->view('inc/footer');
		$this->load->view('inc/foot');


		// $data['blogs'] = $data['blogs'] = $this->blog_model->getBlogData();  
		// //
		// //$this->load->view('inc/header');
		// $this->load->view('index', $data);
		// //$this->load->view('inc/footer');
		// //
	}   


        public function json() {
            echo '{"items":[{"id":"9525","title":"\u10e8\u10d4\u10d6\u10da\u10dd\u10dc\u10d2\u10d8","brand":"408","price":220,"sale":"0","img_dir":"634202","image":"634202_1.jpg","monthprice":22.37,"userid":false},{"id":"9508","title":"Viper SLX Tioset","brand":"408","price":900,"sale":"0","img_dir":"312339","image":"312339_10.jpg","monthprice":91.5,"userid":false},{"id":"9511","title":"Dream`n Play SQ ","brand":"408","price":240,"sale":"0","img_dir":"606155","image":"606155_1.jpg","monthprice":24.4,"userid":false},{"id":"9540","title":"\u10e1\u10d9\u10d0\u10db\u2013\u10db\u10d0\u10d2\u10d8\u10d3\u10d0","brand":"408","price":180,"sale":"0","img_dir":"639580","image":"639580_1.jpg","monthprice":18.3,"userid":false},{"id":"9533","title":"Twister Trio Set","brand":"408","price":1600,"sale":"0","img_dir":"402023","image":"402023_6.jpg","monthprice":162.67,"userid":false},{"id":"9501","title":"Toro ","brand":"408","price":420,"sale":"0","img_dir":"132791","image":"132791_1.jpg","monthprice":42.7,"userid":false},{"id":"9506","title":"Shopper SLX Trioset ","brand":"408","price":800,"sale":"0","img_dir":"153291","image":"153291_3.jpg","monthprice":81.33,"userid":false},{"id":"9487","title":"Viper SLX","brand":"408","price":490,"sale":"0","img_dir":"310397","image":"310397_3.jpg","monthprice":49.82,"userid":false},{"id":"9521","title":"Lift Up 4","brand":"408","price":650,"sale":"0","img_dir":"148037","image":"148037_5.jpg","monthprice":66.08,"userid":false},{"id":"9534","title":"Maxan 4 Trioset","brand":"408","price":1600,"sale":"0","img_dir":"403518","image":"403518_5.jpg","monthprice":162.67,"userid":false},{"id":"9502","title":"Viper SLX Tioset","brand":"408","price":900,"sale":"0","img_dir":"312193","image":"312193_1.jpg","monthprice":91.5,"userid":false},{"id":"9539","title":"\u10e1\u10d9\u10d0\u10db\u2013\u10db\u10d0\u10d2\u10d8\u10d3\u10d0","brand":"408","price":180,"sale":"0","img_dir":"639146","image":"639146_1.jpg","monthprice":18.3,"userid":false},{"id":"9530","title":"Priya Trioset","brand":"408","price":1400,"sale":"0","img_dir":"143483","image":"143483_3.jpg","monthprice":142.33,"userid":false},{"id":"9552","title":"\u10e8\u10d4\u10d6\u10da\u10dd\u10dc\u10d2\u10d8","brand":"408","price":150,"sale":"0","img_dir":"620298","image":"620298_1.jpg","monthprice":15.25,"userid":false},{"id":"9507","title":"Viper Trioset","brand":"408","price":850,"sale":"0","img_dir":"312186","image":"312186_1.jpg","monthprice":86.42,"userid":false}]}';
        }
        
	public function getMovies($period, $ajax){
		$this->period = $period;
		switch ($this->period) {
			case 1:
					$data['topmovies'] = $this->movies_model->dayvideos(35,1);

				break;

				case 2:
					$data['topmovies'] = $this->movies_model->dayvideos(35,7);
				break;

				case 3:
					$data['topmovies'] = $this->movies_model->dayvideos(35, 30);
				break;
			
			default:
					$data['topmovies'] = $this->movies_model->dayvideos(35,1);
				break;


		}
       
		
       	$this->load->view('inc/topMoviesInner',$data);

       
	} 
        
    public function google(){

		//$data['blogs'] = $data['blogs'] = $this->blog_model->getBlogData();  
		//$this->load->view('inc/head');
		//$this->load->view('inc/header');
		$this->load->view('google');
		//$this->load->view('inc/footer');
		//$this->load->view('inc/foot');
	}   
        
        
        public function getauth(){
            $username ='teonaNarimanidze@hotmail.com';
            $password ='J3J2TFErOC';
            $url = "https://api.pcloud.com/userinfo";
            
            //$fields_string = "getauth=1&username=".$username."&password=".$password;
            //$data = array('getauth' => 1, 'username' => $username, 'password' => $password);
            
        $ch = curl_init ();
		curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );
		curl_setopt ( $ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible;)" );
		curl_setopt ( $ch, CURLOPT_URL, 'http://api.pcloud.com/userinfo?getauth=1&username='.$username.'&password='.$password );
		$response = curl_exec ( $ch );
		$response = json_decode ( $response );
		curl_close ($ch);
		//var_dump($response);
            



    $data['auth'] =  $response->auth;
		echo json_encode($data);
    }

	public function blogView($id){
		$data['recomMovies'] = $this->movies_model->getRecomendMovieData(); 
		$data['viewMovies'] = $this->movies_model->getViewMovieData();
		$data['newMovies'] = $this->movies_model->getLastAddedMovieData();
        $data['sliders'] = $this->sliders_model->getSliderData(); 
        $data['blogs'] =  $this->blog_model->getBlogDataLimit(); 
        $data['genreAll'] =  $this->movies_model->getGenreDataLimit(); 
		$this->id=$id;
		$data['blog'] = $this->blog_model->getBlog($this->id); 
		$data['randBlog'] = $this->blog_model->getRandomBlog();
		$this->load->view('single_blog', $data);
		$this->load->view('inc/footer');
		$this->load->view('inc/foot');
	}

}
