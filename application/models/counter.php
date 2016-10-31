<?php

class Counter extends CI_Model {
    
    public function videosum($cat = 0,$order = 'id') {
        if($cat != 0){
            $run = "FIND_IN_SET('".$cat."', ganre)";
            $this->db->where($run);
        }
        if($order == 'cat'){
            $this->db->order_by("id", "desc");
        }elseif ($order == 'fav') {
            $this->db->where('date > UNIX_TIMESTAMP(NOW() - INTERVAL 30 DAY)');
            $this->db->order_by("total_rating", "desc");
        }
        $this->db->where('active', 1);
        $data = $this->db->get('videos')->num_rows();
        return $data;
    }
    
    public function moviesum($cat = 0,$order = 'id') {
        if($cat != 0){
            $run = "FIND_IN_SET('".$cat."', ganre)";
            $this->db->where($run);
        }
        if($order == 'cat'){
            $this->db->order_by("id", "desc");
        }elseif ($order == 'fav') {
            $this->db->where('date > UNIX_TIMESTAMP(NOW() - INTERVAL 30 DAY)');
            $this->db->order_by("total_rating", "desc");
        }
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }
    
    
    public function bundlemoviesum($cat = 0) {
        if($cat != 0){
            $run = "FIND_IN_SET('".$cat."', compilation)";
            $this->db->where($run);
        }
       
            $this->db->order_by("id", "desc");
        
        $this->db->where('active', 1);
        $this->db->where('draft', 0);
        $this->db->where('soon', 0);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }
    
    public function bundlesum() {

        $data = $this->db->get('compilation')->num_rows();
        return $data;
    }
    
    public function draftmoviesum() {
        $this->db->where('active', 0);
        $this->db->where('draft', 1);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }
    
    public function activevideosum() {
        $this->db->where('active', 1);
        $data = $this->db->get('videos')->num_rows();
        return $data;
    }
    
    public function activeMoviesSum() {
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }
    
    public function activetodayvideosum() {
        $this->db->where('date > UNIX_TIMESTAMP(NOW() - INTERVAL 1 DAY)');
        $this->db->where('active', 1);
        $data = $this->db->get('videos')->num_rows();
        return $data;
    }
    
    public function videosearchsum($search = '') {
        $this->db->like('title',$search);
        $data = $this->db->get('videos')->num_rows();
        return $data;
    }
    
    
    public function ganresum() {
        $data = $this->db->get('ganres')->num_rows();
        return $data;
    }
    
    
    public function languagesum() {
        $data = $this->db->get('languages')->num_rows();
        return $data;
    }
    
    public function qualitysum() {
        $data = $this->db->get('quality')->num_rows();
        return $data;
    }
    
    public function serverssum() {
        $data = $this->db->get('servers')->num_rows();
        return $data;
    }
    
    public function userssum() {
        $data = $this->db->get('users')->num_rows();
        return $data;
    }
    
    public function chanelssum() {
        $data = $this->db->get('chanels')->num_rows();
        return $data;
    }
    
    public function adminssum() {
        $data = $this->db->get('admin_users')->num_rows();
        return $data;
    }
    
    public function permissionssum() {
        $data = $this->db->get('permissions')->num_rows();
        return $data;
    }
    
    public function historySum($userid) {
        $this->db->where('userid', $userid);
        $data = $this->db->get('history')->num_rows();
        return $data;
    }
    
    public function movieganresum() {
        $data = $this->db->get('movie_ganres')->num_rows();
        return $data;
    }
    
    public function movierejisorsum() {
        $data = $this->db->get('movie_rejisor')->num_rows();
        return $data;
    }
    public function movieactorssum() {
        $data = $this->db->get('movie_actors')->num_rows();
        return $data;
    }
    
    public function Compilationsum() {
        $data = $this->db->get('compilation')->num_rows();
        return $data;
    }
    
    
    public function activeSearchMoviesSum() {
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }
}

