<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ajax extends CI_Controller {

    private $vip;
    private $active;
    private $per_page;
    private $videoid;
    private $act;
    private $mode;
    private $q;
    private $interval;

    public function __construct() {
        parent::__construct();
        $this->load->helper("url");
        
    }

    public function vip() {
        
        $this->id = $this->input->post('id');
        $this->vip = $this->input->post('vip');
        if ($this->model_estate->vip($this->id,$this->vip)) {     
            echo true;
        }  else {
            echo FALSE;
        }
    }
    
    public function active() {
        
        $this->id = $this->input->post('id');
        $this->active = $this->input->post('active');
        if ($this->model_estate->active($this->id,$this->active)) {     
            echo true;
        }  else {
            echo FALSE;
        }
    }
    
    public function type() {
        $this->status = $this->input->post('status');

        $statusi = $this->model_estate->urbansArrayById('status',$this->status,'type');
        $result =  '<option value="0" selected="selected">'.lang('airchie').'</option>';
        foreach ($statusi as $status) {
            
            $result .=  '<option value="'.$status->id.'" >'.$status->title.'</option>';
        }
        $result .=  '<option value="0" style="display:none;">'.lang('airchie').'</option>';
        echo $result;
    }
    
    public function types() {
        $this->status = $this->input->post('status');

        $statusi = $this->model_estate->urbansArrayById('status',$this->status,'type');
        $result =  '<option value="0" selected="selected">'.lang('airchie').'</option>';
        foreach ($statusi as $status) {
            
            $result .=  '<option value="'.$status->id.'" >'.$status->title.'</option>';
        }
        $result .=  '<option value="0" style="display:none;">'.lang('airchie').'</option>';
        echo $result;
    }
    
    public function region() {
        $this->status = $this->input->post('region');

        $statusi = $this->model_estate->urbansArrayById('block',$this->status,'region');
        //$result = '<div class="col-md-4"><label class="label label-info">უბანი</label>';
        //$result .= '<select name="block" id="block" data-placeholder="Choose..." class="chzn_a form-control">';
        $result =  '<option value="0" selected="selected">'.lang('airchie').'</option>';
        foreach ($statusi as $status) {
            
            $result .= '<option value="'.$status->id.'">'.$status->title.'</option>';
        }
        $result .=  '<option value="0" style="display:none;">'.lang('airchie').'</option>';
        //$result .= '</select></div>';
        echo $result;
    }
    
    public function city() {
        $this->status = $this->input->post('city');

        $statusi = $this->model_estate->urbansArrayById('region',$this->status,'city');
        //$result = '<div class="col-md-4"><label class="label label-info">რაიონი</label>';
        //$result .= '<select name="region" id="region" data-placeholder="Choose..." class="chzn_a form-control">';
        $result =  '<option value="0" selected="selected">'.lang('airchie').'</option>';
        foreach ($statusi as $status) {   
            $result .=  '<option value="'.$status->id.'">'.$status->title.'</option>';
        }
        $result .=  '<option value="0" style="display:none;">'.lang('airchie').'</option>';
        //$result .= '</select></div>';
        echo $result;
    }
    
    public function block() {
        $this->block = $this->input->post('block');

        $statusi = $this->model_estate->urbansArrayById('street',$this->block,'block');
        $result =  '<option value="0" selected="selected">'.lang('airchie').'</option>';
        foreach ($statusi as $status) {
            
            $result .= '<option value="'.$status->id.'">'.$status->title.'</option>';
        }
        $result .=  '<option value="0" style="display:none;">'.lang('airchie').'</option>';
        echo $result;
    }
    
    public function typeArray() {
        
        $this->id = $this->input->post('id');
        $this->vip = $this->input->post('vip');
        if ($this->model_estate->vip($this->id,$this->vip)) {     
            echo true;
        }  else {
            echo FALSE;
        }
    }
    

    public function form() {
        $this->id = $this->input->post('id');
        $data['data'] = $this->model_estate->getObjectView($this->id);
        $data['mdgomareoba'] = $this->model_estate->urbansArray('mdgomareoba');
        $data['proeqts'] = $this->model_estate->urbansArray('proeqti');
        $this->load->view('admin/ajax/form',$data);
    }
    public function check() {
        $this->id = $this->input->post('form');
        $data['data'] = $this->model_estate->getSpecs($this->id);
//        print_r($data);
        $this->load->view('admin/ajax/check',$data);
    }
    
    public function imageupload($id) {
        
        $this->id = $id;
        $directory = "wallpapers/" . $this->id . "/";
        
        if (!is_dir($directory)) {
            @mkdir($directory, 0777, TRUE);
            //@mkdir($directory . "thumbs", 0777, TRUE);
        }
        
        //upload image 1 
        if (empty($_FILES['file']['name'])) {
            $img1 = '';
        } else {
            $img1 = $_FILES['file']['name'];
            // Uploading the normale image
            $config['file_name'] = $img1;
            $config['upload_path'] = $directory;
            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('file')) {
                // added the line above, since I can not use $this->upload->data() else?
                // now the image is being uploaded twice   
                $image_data = $this->upload->data();
                $img = $directory . $image_data['file_name'];
                $imgthumbs = $directory . 'thumbs/' . $image_data['file_name'];

                $this->image_moo->load($img)->load_watermark("images/watermark.png")->watermark(3)->save($img, true);

                $img1 = $image_data['file_name'];
                $this->movies_model->insertImage($this->id,$img1);
            }
            return $img1;
        }
    }
    
    public function imageremove($id) {
        $this->id = $id;
        $directory = "wallpapers/" . $this->id . "/";
        $filename = $directory . $this->input->post('id');
        if (file_exists($filename)) {
            unlink($filename);
        }
        $filename2 = $directory . 'thumbs/' . $this->input->post('id');
        if (file_exists($filename2)) {
            unlink($filename2);
        }
        $this->movies_model->removeImage($this->id,$this->input->post('id'));
    }

}
