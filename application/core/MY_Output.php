<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Output extends CI_Output {

    function set_status_header($code = 200, $text = '')
    {
        set_status_header($code, $text);
        $this->last_set_status_code = $code;
        return $this;
    }

    function get_status_header()
    {
        return $this->last_set_status_code;
    }

}
