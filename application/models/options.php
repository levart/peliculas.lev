<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class options extends CI_Model {
    
    
    public function Str() {
        $this->db->where('id',1);
        $query = $this->db->get('options');
        
        return $query->row()->str;
    }

    public function add_or_change_parameter($parameter) {
        $params = array();
        $output = "?";
        $firstRun = true;
        foreach ($_GET as $key => $val) {
            if ($key != $parameter) {
                if (!$firstRun) {
                    $output .= "&";
                } else {
                    $firstRun = false;
                }
                if (!is_array($val) && !is_array($key)) {
                    $output .= $key . "=" . $val;
                } else {
                    $output .= http_build_query(array($key => $val));
                }
            }
        }
        if (!$firstRun)
            $output .= "";
        return htmlentities($output);
    }
    
    
    public function getLang() {
        $langID = $this->session->userdata('site_lang');
        if($langID == 'geo' || !$langID){
            return "ქართული";
        }elseif($langID == 'eng'){
            return "English";
        }elseif($langID == 'rus'){
            return "Русский";
        }
    }
    
    public function getShiping($id) {
        
        switch ($id) {
            case 1:
                echo '<span class="label label-info">'.lang('process').'</span>';
                break;
            case 2:
                echo '<span class="label label-primary">'.lang('shipped').'</span>';
                break;
            case 3:
                echo '<span class="label label-success">'.lang('delivered').'</span>';
                break;
            default:
                echo '<span class="label label-info">'.lang('process').'</span>';
                break;
        }
        
    }
    
    public function getStatus($id) {
        
        switch ($id) {
            case 0:
                echo '<span class="label label-warning">'.lang('creditprocess').'</span>';
                break;
            case 1:
                echo '<span class="label label-success">'.lang('creditsuccess').'</span>';
                break;
            case 2:
                echo '<span class="label label-danger">'.lang('nocredit').'</span>';
                break;
            default:
                echo '<span class="label label-warning">'.lang('creditprocess').'</span>';
                break;
        }
        
    }
    
    public function getTransStatus($id) {
        
        switch ($id) {
            case 'CREDIT':
                echo '<span class="label label-success">გადახდილია</span>';
                break;
            case 'DEBT':
                echo '<span class="label label-info">გადასახდელი</span>';
                break;
            case 'PRE':
                echo '<span class="label label-warning">თანამონაწილეობა</span>';
                break;
            default:
                echo '<span class="label label-warning">გაურკვეველია</span>';
                break;
        }
        
    }
    
    
    /////////////
    //SALE OPTIONS
    ////////////
    
    public function getMonthPrice($monthprice,$saleprice) {
        if($saleprice != 0){
            return $saleprice." b";
        }else{
            return $monthprice." b";
        }
    }
    
    public function getMonthSalePrice($monthprice,$saleprice) {
        if($saleprice != 0){
            return $monthprice." b";
        }else{
            return  ;
        }
    }
    
    public function getSale($saleprice) {
        if($saleprice != 0){
            $this->load->view('inc/saleribbon');
        }else{
            return  ;
        }
    }
    
}

