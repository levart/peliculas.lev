<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class movies_model extends CI_Model {
    
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
    public function getMovieData($sort = 'id desc') {

        $this->db->order_by($sort);
        return $this->db->get('movies')->result();
    }

    public function getRecomendMovieData($sort = 'id desc') {

        $this->db->order_by($sort);
        $this->db->limit('8');
        $this->db->where('recom',  1);
        
        return $this->db->get('movies')->result();

    }


    public function getViewMovieData($sort = 'view desc') {

        $this->db->order_by($sort);
        return $this->db->get('movies')->result();
    }

    public function getLastAddedMovieData($sort = 'date desc') {

        $this->db->order_by($sort);
        return $this->db->get('movies')->result();

    }


    public function getNewSerialData($start=0,$limit=5,$type ='top') {

        
        switch ($type) {
            case 'new':
                $this->db->order_by('id','desc');
                break;
            case 'top':
                $this->db->order_by('view','desc');
                break;
            default:
                $this->db->order_by('id','desc');
                break;
        }


        $this->db->where("FIND_IN_SET('5',`genre_id`) >", 0);
        $this->db->limit($limit,$start);
        return $this->db->get('movies')->result();
    }



    public function getMovieGenre($id) {

        $this->id = $id;
        
        $this->db->where('ID',  $this->id);

        return $this->db->get('genre')->row();
    }

    public function getMovieDirector($id) {

        $this->id = $id;
        
        $this->db->where('ID',  $this->id);

        return $this->db->get('directors')->row();
    }

    
    
    public function addMovieActors($id) {

        $this->id = $id;
        
        $this->db->where('ID',  $this->id);

        return $this->db->get('actors')->row();
    }


    

    public function getDirectorData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('directors')->result();
    }


    public function getGenreData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('genre')->result();
    }

    public function getGenreDataLimit($sort = 'id desc') {

        $this->db->order_by($sort);
         $this->db->limit(25);
        
        return $this->db->get('genre')->result();
    }


    public function getProducersData($sort = 'id desc') {

        $this->db->order_by($sort);
        
        return $this->db->get('genre')->result();
    }
    
    
    public function getMovie($id) {
        
        $this->db->where('id',  $id);
        
        return $this->db->get('movies')->row();
    }
    
    public function editMovie() {
        // [personalID][company][name][email][phone][location]
        
        
        $data = array(
            'name' => $this->input->post('name'),
            'real_name' => $this->input->post('real_name'),
            'birthdate' => $this->input->post('birthdate'),
            'birth_loc' => $this->input->post('birth_loc'),
            'proff' => $this->input->post('proff'),
            'height' => $this->input->post('height'),
            'raiting' => $this->input->post('raiting'),
            'biography' => $this->input->post('biography'),
            'img' => $this->input->post('img'),
        );


        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('movies', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
  
    public function deleteMovie($id) {
        $this->id = $id;
        
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('movies');
        if($query){
           
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addMovie() {
        $genre = $this->input->post('genre');
        $genre = implode(",",$genre);


        $actor = $this->input->post('actors');
        $actor = implode(",",$actor);
        var_dump($actor);

        $data = array(
            'name' => $this->input->post('name'),
            'director_id' => $this->input->post('director'),
            'genre_id' => $genre,
            'producers' => $this->input->post('producer'),
            'actor_id' => $actor,
            'slogan' => $this->input->post('slogan'),
            'year' => $this->input->post('year'),
            'durat' => $this->input->post('durat'), 
            'budget'=>$this->input->post('budget'), 
            'box_office'=>$this->input->post('box_office'), 
            'descrip'=>$this->input->post('descrip'), 
            'imdb'=>$this->input->post('imdb'), 
            'imdb_link'=>$this->input->post('imdb_link'), 
            'rates'=>$this->input->post('rates'), 
            'img'=>$this->input->post('img'), 
        );
        //var_dump($data);

        // $soundtrack =  array(
        //     'url' => $this->input->post('soundtrack'),
        //     'movie_id' => $this->input->post('id'),
        // );

         $this->db->where('id', $this->input->post('id'));

        $query = $this->db->update('movies', $data);
        // $query1 = $this->db->insert('soundtracks', $soundtrack);
        
        if ($query) {


            $trailer =  array(
            'url' => $this->input->post('trailer'),
            'movie_id' => $this->input->post('id'),
        );

            $query2 = $this->db->insert('trailers', $trailer);
            return true;
            echo "true";
        } else {
            echo "false";
            return false;
        }
    }

// online movie


    public function insertedID() {
        $data = array(
            'date' => time(), 
            'active' => 0, 
            'draft' => 1
            );
        $this->db->insert('movies', $data);
        $last_id = $this->db->insert_id();
        return $last_id;
    }

    public function add_onlinemovie() {
        $data = array(
            'movie_id' => $this->input->post('id'),
            'link' => $this->input->post('link'),
            'language' => $this->input->post('language'),
            'quality' => $this->input->post('quality'),
            'servers' => $this->input->post('servers'),
            // 'date' => time(),
        );
        $query = $this->db->insert('onlinemovie', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }


        public function getonlinemovie($movie_id) {
        $this->db->where('movie_id', $movie_id);
        $this->db->order_by('id', 'desc');
        return $this->db->get('onlinemovie')->result();
    }



       public function onlinemoviedelete($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('onlinemovie')) {
            return true;
        } else {
            return false;
        }
    }

// torrent link

    public function addtorrent() {
        $data = array(
            'movie_id' => $this->input->post('id'),
            'link' => $this->input->post('link'),
            'language' => $this->input->post('language'),
            'quality' => $this->input->post('quality'),
            'size' => $this->input->post('size'),
            // 'date' => time(),
        );
        $query = $this->db->insert('torrentlinks', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function gettorrent($movie_id) {
        $this->db->where('movie_id', $movie_id);
        $this->db->order_by('id', 'desc');
        return $this->db->get('torrentlinks')->result();
    }

    public function torrentdelete($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('torrentlinks')) {
            return true;
        } else {
            return false;
        }
    }

    public function getTrailer($movie_id) {
        $this->db->where('movie_id', $movie_id);
        $this->db->order_by('id', 'desc');
        return $this->db->get('trailers')->result();
    }


public function dayvideoid($limit = '8',$n) {
        $this->db->limit($limit);
        $this->db->order_by("date", "desc"); 
        $this->db->select('distinct(movie_id)');
        $this->db->where('date > unix_timestamp(now() - interval '.$n.' day)');
        $data = $this->db->get('views')->result();
        foreach ($data as $value) {

            $this->db->where('date > unix_timestamp(now() - interval '.$n.' day)');
            $this->db->where('movie_id',$value->movie_id);
            $ids = $this->db->get('views');
            $sum[] = $ids->num_rows();
            $dat[] = $ids->row()->movie_id;
        }
       
        
        if($data){
            array_multisort($sum,SORT_DESC,$dat);
            return $dat;
        }else{
            return NULL;
        }
    }



    public function dayvideos($limit = 11 , $n) {

        $data = $this->dayvideoid($limit , $n);
        
        
        if($data){
       $a = array();
      
        foreach ($data as $value) {
            
            // $a[] = $value['sum'];
            $this->db->select('t1.ID, t1.name, t1.img, t1.year ,t1.imdb, t1.durat, t1.genre_id, t1.director_id , t1.descrip, t1.genre_id, t1.actor_id , count(t2.id) AS msum');
            $this->db->from('movies as t1');
            $this->db->from('views as t2');
            $this->db->where('t2.movie_id = t1.ID');
            $this->db->where('t2.date >= unix_timestamp(now() - interval '.$n.' day)');
             $this->db->where('t1.ID',$value);
          $a[] =  $this->db->get()->row();
        }
    return $a;
        }
        return false;
    }

    public function addview($id) {
        $data = array(
            'movie_id' => $id,
            'ip' => $this->input->ip_address(),
            'date' => time(),
        );

        if($this->session->userdata('username')){
            $data['userid']=$this->session->userdata('id');
            }
        $query = $this->db->insert('views', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }




}


