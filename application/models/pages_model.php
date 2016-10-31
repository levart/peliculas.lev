<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class pages_model extends CI_Model {
    private $id;
    private $name_geo;
    private $name_eng;
    private $text_geo;
    private $text_eng;
    private $page;

    public function __construct() {
        parent::__construct();
        $this->load->library('upload');
        $this->load->library('image_moo');
        $this->load->helper('string');
        $this->load->helper('file');
    }
    
    public function getData() {
        switch ($this->session->userdata('site_lang')) {
            case 'geo':
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
            case 'eng':
                $this->db->select('id,date,page,name_eng as name,text_eng as text');
                break;
            default:
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
        }
        
        return $this->db->get('pages')->result();
    }
    
    public function getIdDataArray($id) {
        $this->id = $id;
        $this->db->where('author',  $this->id);
        switch ($this->session->userdata('site_lang')) {
            case 'geo':
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
            case 'eng':
                $this->db->select('id,date,page,name_eng as name,text_eng as text');
                break;
            default:
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
        }
        $query = $this->db->get('pages')->result();
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    public function getIdData($id) {
        $this->id = $id;
        $this->db->where('id',  $this->id);
        switch ($this->session->userdata('site_lang')) {
            case 'geo':
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
            case 'eng':
                $this->db->select('id,date,page,name_eng as name,text_eng as text');
                break;
            default:
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
        }
        $query = $this->db->get('pages')->row();
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    public function getPageData($page) {
        $this->page = $page;
        $this->db->where('page',  $this->page);
        switch ($this->session->userdata('site_lang')) {
            case 'geo':
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
            case 'eng':
                $this->db->select('id,date,page,name_eng as name,text_eng as text');
                break;
            default:
                $this->db->select('id,date,page,name_geo as name,text_geo as text');
                break;
        }
        $query = $this->db->get('pages')->row();
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    public function getIdDataAdmin($id) {
        $this->id = $id;
        $this->db->where('id',  $this->id);
        $query = $this->db->get('pages')->row();
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    public function deleteIdData($id) {
        $this->id = $id;
        $this->db->where('id',  $this->id);
        $query = $this->db->delete('pages');
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    
    public function editIdData($id) {
        $this->id = $id;
        $this->name_geo = $this->input->post('name_geo', TRUE);
        $this->name_eng = $this->input->post('name_eng', TRUE);
        $this->desc_geo = $this->input->post('desc_geo', TRUE);
        $this->desc_eng = $this->input->post('desc_eng', TRUE);
        $this->text_geo = $this->input->post('text_geo', TRUE);
        
        $this->text_eng = $this->input->post('text_eng', TRUE);
        $this->page = $this->input->post('page', TRUE);
        $this->db->where('id',  $this->id);
        $data =array(
            'name_geo' => $this->name_geo,
            'name_eng' => $this->name_eng,
            'desc_geo' => $this->desc_geo,
            'desc_eng' => $this->desc_eng,
            'text_geo' => $this->text_geo,
            'text_eng' => $this->text_eng,
            'page' => $this->page,

        );
        $query = $this->db->update('pages',$data);
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    public function addData() {
        
        
        
        $this->name_geo = $this->input->post('name_geo', TRUE);
        // $this->name_eng = $this->input->post('name_eng', TRUE);
        $this->text_geo = $this->input->post('text_geo', TRUE);
        // $this->text_eng = $this->input->post('text_eng', TRUE);
        $this->page = $this->input->post('page', TRUE);
        $this->db->where('id',  $this->id);
        $data =array(
            'name_geo' => $this->name_geo,
            // 'name_eng' => $this->name_eng,
            'text_geo' => $this->text_geo,
            // 'text_eng' => $this->text_eng,
            'page' => $this->page,
        );
        $query = $this->db->insert('pages',$data);
        if($query){
            return $query;
        }  else {
            return false;
        }
    }
    
    
    
}
