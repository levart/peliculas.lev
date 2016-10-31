<?php

class Model_page extends CI_Model {

    function __construct() {
        parent::__construct();
    }
    
    public function viewPage($page) {
        $this->db->where('page',$page);
        $q_page = $this->db->get('pages');
        return $q_page->row();
    }

}