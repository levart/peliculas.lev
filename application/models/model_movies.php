<?php
class model_movies extends CI_Model {

    private $active;
    private $cat;
    private $time_limit;
    
    
    public function GetAllMoviesAdmn() {
        $this->db->where('active', 1);
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function all_movies() {
        
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function cat_movies($cat,$perPage = '',$offset='') {
        $this->cat = $cat;
        
        $this->db->limit($perPage,$offset);
        $this->db->where('ganre IN ('.$this->cat.')');
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    
    
    public function cat_moviesrows($cat) {
        $this->cat = $cat;
        if($this->cat){
        $this->db->where('ganre IN ('.$this->cat.')');
        }
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->num_rows();
        return $data;
    }

    public function alldraftmovies($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function all_movies_all($perPage = '',$offset='') {
        $this->db->limit($perPage,$offset);
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function all_movies_nl() {
        $this->db->order_by('id', 'desc');
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function soonMovies($limit = '14') {
        $this->db->order_by('id', 'desc');
        $this->db->limit($limit);
        $this->db->where('active', 1);
        $this->db->where('soon', 1);
        $this->db->where('draft', 0);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function movieFirstLink($movieid) {
        $this->db->where('movie', $movieid);
        $data = $this->db->get('movie_links')->first_row();
        return $data;
    }

    public function movieLangLink($lang, $movieid) {
        $this->db->where('lang', $lang);
        $this->db->where('movie', $movieid);
        $data = $this->db->get('movie_links')->row();
        return $data;
    }

    public function last_movies($limit = '', $start = '', $cat = 0) {
        if ($cat != 0) {
            $run = "FIND_IN_SET('" . $cat . "', ganre)";
            $this->db->where($run);
        }
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $this->db->order_by('id', 'desc');
        $this->time_limit = $this->input->get('time_limit');
        $time = array(
            'day' => 'DAY',
            'week' => 'WEEK',
            'month' => 'MONTH'
        );

        if (empty($this->time_limit)) {
            
        } else {
            $this->db->where('date > NOW() - INTERVAL 1 ' . $time[$this->time_limit] . '');
        }
        $this->db->limit($limit, $start);
        $order = $this->input->get('order');
        if (!$order) {
            $this->db->order_by("id", "asc");
        } else {
            $this->db->order_by($order, "desc");
        }
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    public function bundleMovies($limit = '', $start = '', $cat = 0) {
        if ($cat != 0) {
            $run = "FIND_IN_SET('".$cat."', compilation)";
            $this->db->where($run);
        }
        $this->db->where('active', 1);
        $this->db->where('draft', 0);
        $this->db->where('soon', 0);
        $this->db->order_by('id', 'desc');
        
        $this->db->limit($limit, $start);
        
        $data = $this->db->get('movies')->result();
        return $data;
    }
    

    public function searchMoviesFull($arr, $limit = '', $start = '') {
        if ($arr) {

            $where = implode(' AND ', $arr);
            $this->db->where($where);
        }


        $this->db->order_by('id', 'desc');


        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function searchRejisor($rejisor) {
        $this->db->like('title_eng', $rejisor);
        $this->db->or_like('title_esp', $rejisor);
        $data = $this->db->get('movie_rejisor')->result();
        return $data;
    }

    public function topyear($cat = false) {
        $this->db->where('YEAR(date)', date('Y'));
        $this->db->order_by("view", "desc");
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function related($cat = false) {
        $run = "FIND_IN_SET('" . $cat . "', ganre)";
        $this->db->where($run);
        $this->db->order_by('id', 'RANDOM');
        $this->db->limit(10);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function get_latests($movie, $user) {

        $this->db->where('user', $user);
        $this->db->order_by('id', 'DESC');
        $this->db->limit(10);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function pop_movies($cat = false, $limit = '8') {
        $this->db->limit($limit);
        $this->db->order_by("date", "desc");
        $this->db->cache_on();
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }
    
    

    public function fav_movies($limit = '6', $start = '') {
        $this->db->limit($limit, $start);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $this->db->cache_on();
        $this->db->where('date > unix_timestamp(now() - interval 1 MONTH)');
        //$this->db->where('MONTH(FROM_UNIXTIME(date))', date('m'));
        $this->db->order_by("total_rating", "desc");
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function movie_id($url) {

        $urls = parse_url($url);

        //Expect the URL to be http://youtu.be/abcd, where abcd is the movie ID
        if ($urls['host'] == 'youtu.be') :

            $imgPath = ltrim($urls['path'], '/');

        //Expect the URL to be http://www.youtube.com/embed/abcd
        elseif (strpos($urls['path'], 'embed') == 1) :

            $imgPath = end(explode('/', $urls['path']));

        //Expect the URL to be abcd only
        elseif (strpos($url, '/') === false):

            $imgPath = $url;

        //Expect the URL to be http://www.youtube.com/watch?v=abcd
        else :

            parse_str($urls['query']);

            $imgPath = $v;

        endif;
        return $imgPath;
    }

    public function fetch_highest_res($movieid) {

        $image_qualities = array('maxresdefault', 'hqdefault', 'mqdefault');
        //in the order of preference

        foreach ($image_qualities as $image_quality) {
            if (@getimagesize(('http://i.ytimg.com/vi/' . $movieid . '/' . $image_quality . '.jpg'))) {
                $imgurl = "http://i.ytimg.com/vi/$movieid/$image_quality.jpg";
                return $imgurl;
                break; //exiting
            }
        }
    }

    public function getDuration($url) {

        parse_str(parse_url($url, PHP_URL_QUERY), $arr);
        $movie_id = $arr['v'];


        $data = @file_get_contents('http://gdata.youtube.com/feeds/api/movies/' . $movie_id . '?v=2&alt=jsonc');
        if (false === $data)
            return false;

        $obj = json_decode($data);

        //$sec = gmdate("i:s", $obj->data->duration);
        $sec = $obj->data->duration;

        return $sec;
    }

    public function detectHD($url) {

        parse_str(parse_url($url, PHP_URL_QUERY), $arr);
        $movie_id = $arr['v'];


        $data = @file_get_contents('http://gdata.youtube.com/feeds/api/movies/' . $movie_id . '?v=2&alt=jsonc');
        if (false === $data)
            return false;

        $obj = json_decode($data);

        //$sec = gmdate("i:s", $obj->data->duration);
        $sec = $obj->data->hd;

        return $sec;
    }

    public function ago($datetime, $full = false) {
        $now = new DateTime();
        $ago = new DateTime($datetime);
        $diff = $now->diff($ago);

        if (isset($diff)) {
            $string = array(
                'y' => 'year',
                'm' => 'month',
                'd' => 'day',
                'h' => 'hour',
                'i' => 'minute'
            );

            foreach ($string as $k => &$v) {
                if ($diff->$k) {
                    $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
                } else {
                    unset($string[$k]);
                }
            }

            if (!$full)
                $string = array_slice($string, 0, 1);
            return $string ? implode(', ', $string) . ' ago' : 'just now';
        }
        else {
            return 0;
        }
    }

    public function add_movie() {
        $this->load->library('image_moo');
        $this->load->helper('string');

        $ganre = $this->input->post('ganre');
        if (is_array($ganre)) {
            $ganre = implode(",", $ganre);
        }
        $compilation = $this->input->post('compilation');
        if (is_array($compilation)) {
            $compilation = implode(",", $compilation);
        }
        $actors = $this->input->post('actors');
        if (is_array($actors)) {
            $actors = implode(",", $actors);
        }
//        $languages = $this->input->post('languages');
//        $languages = implode(",", $languages);
//        $movielinks = $this->input->post('movielink');
//        $img_dir = random_string('alnum', 8);
//        $directory = "uploads/movies/video/" . $img_dir . "/";
//        $directory_cover = "uploads/movies/cover/" . $img_dir . "/";
//        mkdir($directory);
//        mkdir($directory_cover);
//
//        //upload image 1 
//        if (empty($_FILES['image']['name'])) {
//            $image = '';
//        } else {
//            $image = $_FILES['image']['name'];
//            // Uploading the normale image
//            $config['file_name'] = $image;
//            $config['upload_path'] = $directory;
//            $config['allowed_types'] = 'gif|jpg|jpeg|png';
//
//            $this->load->library('upload', $config);
//            $this->upload->initialize($config);
//            if ($this->upload->do_upload('image')) {
//                // added the line above, since I can not use $this->upload->data() else?
//                // now the image is being uploaded twice   
//                $image_data = $this->upload->data();
//                $image = $directory . $image_data['file_name'];
//                $imgthumbs = $directory . 'thumbs/' . $image_data['file_name'];
//
//                $this->image_moo->load($image)->resize_crop(830, 500)->save($image, true);
//
//                $image = $image_data['file_name'];
//            }
//        }
//
//
//        //upload image 1 
//        if (empty($_FILES['cover']['name'])) {
//            $cover = '';
//        } else {
//            $cover = $_FILES['cover']['name'];
//            // Uploading the normale image
//            $config['file_name'] = $image;
//            $config['upload_path'] = $directory_cover;
//            $config['allowed_types'] = 'gif|jpg|jpeg|png';
//
//            $this->load->library('upload', $config);
//            $this->upload->initialize($config);
//            if ($this->upload->do_upload('cover')) {
//                // added the line above, since I can not use $this->upload->data() else?
//                // now the image is being uploaded twice   
//                $image_data = $this->upload->data();
//                $cover = $directory_cover . $image_data['file_name'];
//
//
//                $this->image_moo->load($cover)->resize_crop(233, 336)->save($cover, true);
//
//                $cover = $image_data['file_name'];
//            }
//        }



        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
            'year' => $this->input->post('year'),
            'duration' => $this->input->post('duration'),
            'imdb' => $this->input->post('imdb'),
            'imdb_link' => $this->input->post('imdb_link'),
            //'image' => $image,
            //'cover' => $cover,
            //'img_dir' => $img_dir,
            //'active' => 1,
            'ganre' => $ganre,
            'compilation' => $compilation,
            'actors' => $actors,
            //'languages' => $languages,
            'descript' => $this->input->post('desc'),
            'draft' => $this->input->post('draft'),
            'active' => $this->input->post('active'),
            'soon' => $this->input->post('soon'),
            'meta_d' => $this->input->post('meta_d'),
            'meta_k' => $this->input->post('meta_k'),
            'video' => $this->input->post('video'),
            'rejisori' => $this->input->post('directed'),
                //'date' => time(),
        );
        $this->db->where('id', $this->input->post('id'));
        $query = $this->db->update('movies', $data);
        $movie = $this->input->post('id');
        if ($query) {
//            foreach ($movielinks as $key => $value) {
//                $data = array(
//                    'video' => $value,
//                    'movie' => $movie,
//                    'lang' => $key,
//                );
//
//                $query2 = $this->db->insert('movie_links', $data);
//            }
            return true;
        } else {
            return false;
        }
    }
    
    public function add_onlinemovie() {
        $data = array(
            'movie_id' => $this->input->post('id'),
            'link' => $this->input->post('link'),
            'language' => $this->input->post('language'),
            'quality' => $this->input->post('quality'),
            'servers' => $this->input->post('servers'),
            'date' => time(),
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

    public function add_torrent() {
        $data = array(
            'movie_id' => $this->input->post('id'),
            'link' => $this->input->post('link'),
            'language' => $this->input->post('language'),
            'quality' => $this->input->post('quality'),
            'size' => $this->input->post('size'),
            'date' => time(),
        );
        $query = $this->db->insert('torrentlinks', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function getTorrent($movie_id) {
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

    public function updateCover($movie_id, $img_dir, $cover) {




        $data = array(
            'cover' => $cover,
            'img_dir' => $img_dir
        );
        $this->db->where('id', $movie_id);
        $query = $this->db->update('movies', $data);
        if ($query) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function edit_movie($id) {
        $this->load->library('image_moo');

        $ganre = $this->input->post('ganre');
        $ganre = implode(",", $ganre);
        $actors = $this->input->post('actors');
        $actors = implode(",", $actors);
        $languages = $this->input->post('languages');
        $languages = implode(",", $languages);
        
        $compilation = $this->input->post('compilation');
        $compilation = implode(",", $compilation);
        
        
        $img_dir = $this->input->post('img_dir');
        $directory = "uploads/movies/video/" . $img_dir . "/";
        $directory_cover = "uploads/movies/cover/" . $img_dir . "/";

        //upload image 1 
        if (empty($_FILES['image']['name'])) {
            $image = $this->input->post('img');
        } else {
            $image = $_FILES['image']['name'];
            // Uploading the normale image
            $config['file_name'] = $image;
            $config['upload_path'] = $directory;
            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('image')) {
                // added the line above, since I can not use $this->upload->data() else?
                // now the image is being uploaded twice   
                $image_data = $this->upload->data();
                $image = $directory . $image_data['file_name'];
                $imgthumbs = $directory . 'thumbs/' . $image_data['file_name'];

                $this->image_moo->load($image)->resize_crop(830, 500)->save($image, true);

                $image = $image_data['file_name'];
            }
        }


        //upload image 1 
        if (empty($_FILES['cover']['name'])) {
            $cover = $this->input->post('cov');
        } else {
            $cover = $_FILES['cover']['name'];
            // Uploading the normale image
            $config['file_name'] = $image;
            $config['upload_path'] = $directory_cover;
            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if ($this->upload->do_upload('cover')) {
                // added the line above, since I can not use $this->upload->data() else?
                // now the image is being uploaded twice   
                $image_data = $this->upload->data();
                $cover = $directory_cover . $image_data['file_name'];


                $this->image_moo->load($cover)->resize_crop(233, 336)->save($cover, true);

                $cover = $image_data['file_name'];
            }
        }

        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
            'year' => $this->input->post('year'),
            'ganre' => $ganre,
            'compilation' => $compilation,
            'actors' => $actors,
            'descript' => $this->input->post('desc'),
            'meta_d' => $this->input->post('meta_d'),
            'meta_k' => $this->input->post('meta_k'),
            'video' => $this->input->post('video'),
            'rejisori' => $this->input->post('directed'),
            'draft' => $this->input->post('draft'),
            'active' => $this->input->post('active'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('movies', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function image_detect($image, $movie) {
        if ($image == '0') {
            return $this->fetch_highest_res($this->movie_id($movie));
        } else {
            return '/uploads/movies/' . $image;
        }
    }

    public function delete($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('movies')) {
            return true;
        } else {
            return false;
        }
    }

    public function hide($id, $status) {
        if ($status == 0) {
            $this->active = '1';
        } elseif ($status == 1) {
            $this->active = '0';
        }
        $this->db->where('id', $id);
        $data = array(
            'active' => $this->active,
        );
        if ($this->db->update('movies', $data)) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_data($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('movies')->row();
        return $data;
    }

    public function get_movie($id) {
        $this->db->where('id', $id);
        $this->db->cache_on();
        $data = $this->db->get('movies')->row();
        
        return $data;
    }

    public function get_moviesByGanre($ganre) {
        $ganres = explode(",", $ganre);
        $ganrecount = count($ganres);
        if ($ganrecount != 1) {
            
            $ganr = array_rand($ganres, $ganrecount);
            $run = "FIND_IN_SET(" . $ganres[$ganr[0]] . ", ganre)";
            $this->db->where($run);
            $run = "FIND_IN_SET(" . $ganres[$ganr[1]] . ", ganre)";
            $this->db->or_where($run);
        } else {
            $run = "FIND_IN_SET(" . $ganres[0] . ", ganre)";
            $this->db->where($run);
        
        }
        $this->db->order_by('id', 'RANDOM');
        $this->db->limit(4);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $this->db->cache_on();
        $data = $this->db->get('movies')->result();
        return $data;
    }

    //Ganres
    public function all_ganres($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('movie_ganres')->result();
        return $data;
    }

    public function ganres_menu() {
        $data = $this->db->get('movie_ganres')->result();
        return $data;
    }

    public function all_ganres_nolimit() {
        switch ($this->session->userdata('site_lang')) {
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            default:
                $this->db->select('id,title_eng as title');
                break;
        }
        $data = $this->db->get('movie_ganres')->result();
        return $data;
    }

    public function edit_data_ganres($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('movie_ganres')->row();
        return $data;
    }

    public function delete_ganre($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('movie_ganres')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_ganre() {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );

        $query = $this->db->insert('movie_ganres', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_ganre($id) {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('movie_ganres', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function ganre_list($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_ganres')->result();
        foreach ($data as $datas) {
            $ar[] = $datas->title;
        }
        $title = implode(',', $ar);
        return $title;
    }

    public function ganre_list_array($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_ganres')->result();

        return $data;
    }
    
    //Ganres
    public function all_compilation($limit = '', $start = '') {
        switch ($this->session->userdata('site_lang')) {
            case 'english':
                $this->db->select('id,title_eng as title,image');
                break;
            case 'espanol':
                $this->db->select('id,title_esp as title,image');
                break;
            default:
                $this->db->select('id,title_eng as title,image');
                break;
        }
        $this->db->limit($limit, $start);
        $data = $this->db->get('compilation')->result();
        return $data;
    }

    public function compilation_menu($limit = '14') {
        switch ($this->session->userdata('site_lang')) {
            case 'english':
                $this->db->select('id,title_eng as title,image');
                break;
            case 'espanol':
                $this->db->select('id,title_esp as title,image');
                break;
            default:
                $this->db->select('id,title_eng as title,image');
                break;
        }
        $this->db->limit($limit);
        $data = $this->db->get('compilation')->result();
        return $data;
    }

    public function all_compilation_nolimit() {
        switch ($this->session->userdata('site_lang')) {
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            default:
                $this->db->select('id,title_eng as title');
                break;
        }
        $data = $this->db->get('compilation')->result();
        return $data;
    }

    public function edit_data_compilation($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('compilation')->row();
        return $data;
    }

    public function delete_compilation($id) {
        $img = $this->edit_data_compilation($id);
        
        $this->db->where('id', $id);
        if ($this->db->delete('compilation')) {
            $filename = 'uploads/movies/compilation/'.$img->image;
            if (file_exists($filename)) {
                unlink($filename);
                
            } 
           
            return true;
        } else {
            return false;
        }
    }

    public function add_compilation() {
        $this->load->library('image_lib');
        //Configure
        //set the path where the files uploaded will be copied. NOTE if using linux, set the folder to permission 777
        $config['upload_path'] = 'uploads/movies/compilation/';
        // set the filter image types
        $config['allowed_types'] = 'gif|jpg|png';
        //load the upload library
        $this->load->library('upload', $config);
    
        $this->upload->initialize($config);
    
        $this->upload->set_allowed_types('*');
        
        if (!$this->upload->do_upload('image')) {
            $img = 0;
        } else { //else, set the success message
            $image = $this->upload->data();
            
            $img =  $image['file_name'];
            
            if ($img_dim = getimagesize($image['full_path'])) {
                list($image_width, $image_height) = $img_dim;
            }
            

            $configresize['image_library']  = 'gd2';
            $configresize['source_image'] = $image['full_path'];
            $configresize['width']     = 233;
            $configresize['height']   = 336;
            
            $this->image_lib->clear();
            $this->image_lib->initialize($configresize);
            $this->image_lib->resize();
            
            $configThumb['image_library']  = 'gd2';
            $configThumb['source_image'] = $image['full_path'];
            $configThumb['maintain_ratio'] = FALSE;
            $configThumb['width']     = 233;
            $configThumb['height']   = 336;
            $img_dim = getimagesize($image['full_path']);
            list($thumb_width, $thumb_height) = $img_dim;
            $configThumb['y_axis']   = ($thumb_height-336)/2;
            $configThumb['x_axis']   = ($thumb_width-233)/2;
            
            if($image['is_image'] == 1){
                
                $this->image_lib->clear();
                $this->image_lib->initialize($configThumb);
                $this->image_lib->crop();
        }
        }
        
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
            'active' => $this->input->post('active'),
            'image' => $img
        );

        $query = $this->db->insert('compilation', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_compilation($id) {
        $this->load->library('image_lib');
        
        //Configure
        //set the path where the files uploaded will be copied. NOTE if using linux, set the folder to permission 777
        $config['upload_path'] = 'uploads/movies/compilation/';
        // set the filter image types
        $config['allowed_types'] = 'gif|jpg|png';
        //load the upload library
        $this->load->library('upload', $config);
    
        $this->upload->initialize($config);
    
        $this->upload->set_allowed_types('*');
        
        if (!$this->upload->do_upload('image')) {
            $img = $this->input->post('img');
        } else { //else, set the success message
            $image = $this->upload->data();
            
            $img =  $image['file_name'];
            
            if ($img_dim = getimagesize($image['full_path'])) {
                list($image_width, $image_height) = $img_dim;
            }
            

            $configresize['image_library']  = 'gd2';
            $configresize['source_image'] = $image['full_path'];
            $configresize['width']     = 233;
            $configresize['height']   = 336;
            
            $this->image_lib->clear();
            $this->image_lib->initialize($configresize);
            $this->image_lib->resize();
            
            $configThumb['image_library']  = 'gd2';
            $configThumb['source_image'] = $image['full_path'];
            $configThumb['maintain_ratio'] = FALSE;
            $configThumb['width']     = 233;
            $configThumb['height']   = 336;
            $img_dim = getimagesize($image['full_path']);
            list($thumb_width, $thumb_height) = $img_dim;
            $configThumb['y_axis']   = ($thumb_height-336)/2;
            $configThumb['x_axis']   = ($thumb_width-233)/2;
            
            if($image['is_image'] == 1){
                
                $this->image_lib->clear();
                $this->image_lib->initialize($configThumb);
                $this->image_lib->crop();
            }
            $filename = 'uploads/movies/compilation/'.$this->input->post('img');
            if (file_exists($filename)) {
                unlink($filename);
                
            } 
        }
        
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
            'active' => $this->input->post('active'),
            'image' => $img
        );
        $this->db->where('id', $id);
        $query = $this->db->update('compilation', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function compilation_list($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('compilation')->result();
        foreach ($data as $datas) {
            $ar[] = $datas->title;
        }
        $title = implode(',', $ar);
        return $title;
    }

    public function compilation_list_array($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('compilation')->result();

        return $data;
    }
    
    public function compilationTitle($id) {
        
        $this->db->where('id', $id);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('compilation')->row();

        return $data;
    }
    

    //Languages
    public function all_language_nolimit() {
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title');
                break;
            case 'english':
                $this->db->select('id,title');
                break;
            default:
                $this->db->select('id,title');
                break;
        }
        $data = $this->db->get('languages')->result();
        return $data;
    }

    //Languages
    public function all_language_nolimit_id() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('languages')->row();
        return $data->id;
    }

    public function edit_data_language($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('languages')->row();
        return $data;
    }

    public function delete_language($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('languages')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_language() {
        $data = array(
            'title' => $this->input->post('title'),
        );

        $query = $this->db->insert('languages', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_language($id) {
        $data = array(
            'title' => $this->input->post('title'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('languages', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function getLanguage($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('languages')->row();
        if ($query) {
            return $query->title;
        } else {
            return false;
        }
    }
    
    public function getLanguageShort($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('languages')->row();
        if ($query) {
            return $query->short;
        } else {
            return false;
        }
    }

    public function languages_list_array($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);

        $data = $this->db->get('languages')->result();

        return $data;
    }

    //Qualities
    public function all_quality($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('movies_quality')->result();
        return $data;
    }

    public function all_quality_nolimit() {
        $data = $this->db->get('movies_quality')->result();
        return $data;
    }

    public function edit_data_quality($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('movies_quality')->row();
        return $data;
    }

    public function delete_quality($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('movies_quality')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_quality() {
        $data = array(
            'title' => $this->input->post('title'),
        );

        $query = $this->db->insert('movies_quality', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_quality($id) {
        $data = array(
            'title' => $this->input->post('title'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('movies_quality', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    //servers
    public function all_servers($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('servers')->result();
        return $data;
    }

    public function all_servers_nolimit() {
        $data = $this->db->get('servers')->result();
        return $data;
    }

    public function edit_data_servers($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('servers')->row();
        return $data;
    }

    public function delete_servers($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('servers')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_servers() {
        $data = array(
            'title' => $this->input->post('title'),
        );

        $query = $this->db->insert('servers', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_servers($id) {
        $data = array(
            'title' => $this->input->post('title'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('servers', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function main_compilation() {
        $this->db->where('main', 1);
        $compilation = $this->db->get('compilation')->result();
        $i = 0;
        foreach ($compilation as $gan) {
            $this->db->limit(3, 0);
            $run = "FIND_IN_SET('" . $gan->id . "', compilation)";
            $this->db->where($run);
            $this->db->order_by("id", "desc");
            $data[$i] = $this->db->get('movies')->result();
            $this->db->where("id", $gan->id);
            $compilation = $this->db->get('compilation')->row();
            $data[$i]['compilation'] = array(
                'compilationtitle' => $compilation->title,
                'compilationid' => $compilation->id,
            );
            $i++;
        }
        return $data;
    }

    public function main_compilation_sum() {
        $this->db->where('main', 1);
        $compilation = $this->db->get('compilation')->num_rows;
        $compilation -= 1;
        return $compilation;
    }

    public function main_compilation_movie_sum($compilation) {
        $run = "FIND_IN_SET('" . $compilation . "', compilation)";
        $this->db->where($run);
        $compilation = $this->db->get('movies')->num_rows;
        if ($compilation < 3) {
            $gan = $compilation - 1;
        } else {
            $gan = 2;
        }
        return $gan;
    }

    public function get_view($movieid, $view) {
        $views = $view + 1;
        
        $data = array(
            'view' => $views,
        );
        $this->db->where('id', $movieid);
        $query = $this->db->update('movies', $data);
        if ($query) {
            $this->add_view($movieid);
            return $views;
        } else {
            return $views;
        }
    }

    public function add_history($movieid, $userid) {
        $data = array(
            'movieid' => $movieid,
            'userid' => $userid,
            'date' => time(),
            'ip' => $this->input->ip_address(),
        );

        $query = $this->db->insert('history', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }
    
    public function add_view($videoid) {
        $data = array(
            'videoid' => $videoid,
            'date' => time(),
            'ip' => $this->input->ip_address(),
        );
        $query = $this->db->insert('movie_views', $data);
        if ($query) {
        return true;
        } else {
            return false;
        }
    }
    
    public function dayvideos($cat = false,$limit = '8') {
        $this->db->limit($limit);
        //$this->db->order_by("date", "desc"); 
        
        $this->db->select('distinct(videoid)');
        $this->db->where('date >= unix_timestamp(now() - interval 1 day)');
        $data = $this->db->get('movie_views')->result();
        foreach ($data as $value) {

            $this->db->where('date >= unix_timestamp(now() - interval 1 day)');
            $this->db->where('videoid',$value->videoid);
            $ids = $this->db->get('movie_views');
            $sum[] = $ids->num_rows();
            $dat[] = $ids->row()->videoid;
        }
        
        if($data){
            array_multisort($sum,SORT_DESC,$dat);
            return $dat;
        }  else {
            return NULL;
        }
    }
    
    public function dayvideosCount() {
        $this->db->where('date >= unix_timestamp(now() - interval 1 day)');
        $data = $this->db->get('movie_views')->num_rows();
        
        return $data;
        
    }
    
    
    public function weekmovies($limit = '8') {
        $this->db->limit($limit);
        //$this->db->order_by("date", "desc"); 
        
        $this->db->select('distinct(videoid)');
        $this->db->where('date >= unix_timestamp(now() - interval 1 WEEK)');
        $data = $this->db->get('movie_views')->result();
        foreach ($data as $value) {

            $this->db->where('date >= unix_timestamp(now() - interval 1 WEEK)');
            $this->db->where('videoid',$value->videoid);
            $ids = $this->db->get('movie_views');
            $sum[] = $ids->num_rows();
            $dat[] = $ids->row()->videoid;
        }
        
        if($data){
            array_multisort($sum,SORT_DESC,$dat);
            return $dat;
        }  else {
            return NULL;
        }
    
    }
    
    public function weekmoviesCount() {
        $this->db->where('date > unix_timestamp(now() - interval 1 WEEK)');
        $data = $this->db->get('movie_views')->num_rows();
        
        return $data;
        
    }
    
    public function weekmoviesViewCount($videoid) {
        $this->db->where('date > unix_timestamp(now() - interval 1 WEEK)');
        $this->db->where('videoid',$videoid);
        $data = $this->db->get('movie_views')->num_rows();
        
        return $data;
        
    }
    
    public function get_search($search) {

        $this->db->like('title', $search);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function get_search_movies($limit = '', $start = '') {

        $this->db->like('title', $this->input->get('srch_str'));
        $this->db->limit($limit, $start);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function get_userchan($userid, $interval = 'month') {
        $time = array(
            'week' => 'WEEK',
            'month' => 'MONTH'
        );

        if ($interval == 'alls') {
            
        } else {
            $this->db->where('date > NOW() - INTERVAL 1 ' . $time[$interval] . '');
        }
        $this->db->where('user', $userid);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    //Ganres
    public function all_rejisores($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('movie_rejisor')->result();
        return $data;
    }

    public function rejisores_menu() {
        $data = $this->db->get('movie_rejisor')->result();
        return $data;
    }

    public function all_rejisores_nolimit() {
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_rejisor')->result();
        return $data;
    }

    public function edit_data_rejisores($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('movie_rejisor')->row();
        return $data;
    }

    public function delete_rejisor($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('movie_rejisor')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_rejisor() {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );

        $query = $this->db->insert('movie_rejisor', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_rejisor($id) {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('movie_rejisor', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function rejisor_list($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        $data = $this->db->get('movie_rejisor')->result();
        foreach ($data as $datas) {
            $ar[] = $datas->title;
        }
        $title = implode(',', $ar);
        return $title;
    }

    public function rejisor_list_array($array) {
        $arr = $array;
        $this->db->where('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_rejisor')->row();

        return $data;
    }

    public function all_rejisor_nolimit_id() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('movie_rejisor')->row();
        return $data->id;
    }

    //Ganres
    public function all_actors($limit = '', $start = '') {
        $this->db->limit($limit, $start);
        $data = $this->db->get('movie_actors')->result();
        return $data;
    }

    public function actors_menu() {
        $data = $this->db->get('movie_actors')->result();
        return $data;
    }

    public function all_actors_nolimit() {
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_actors')->result();
        return $data;
    }

    public function edit_data_actors($id) {
        $this->db->where('id', $id);
        $data = $this->db->get('movie_actors')->row();
        return $data;
    }

    public function delete_actors($id) {
        $this->db->where('id', $id);
        if ($this->db->delete('movie_actors')) {
            return true;
        } else {
            return false;
        }
    }

    public function add_actors() {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );

        $query = $this->db->insert('movie_actors', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function edit_actors($id) {
        $data = array(
            'title_eng' => $this->input->post('title_eng'),
            'title_esp' => $this->input->post('title_esp'),
        );
        $this->db->where('id', $id);
        $query = $this->db->update('movie_actors', $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

    public function actors_list($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        $data = $this->db->get('movie_actors')->result();
        foreach ($data as $datas) {
            $ar[] = $datas->title;
        }
        $title = implode(',', $ar);
        return $title;
    }

    public function actors_list_array($array) {
        $arr = explode(',', $array);
        $this->db->where_in('id', $arr);
        switch ($this->session->userdata('site_lang')) {
            case 'espanol':
                $this->db->select('id,title_esp as title');
                break;
            case 'english':
                $this->db->select('id,title_eng as title');
                break;
            default:
                $this->db->select('id,title_esp as title');
                break;
        }
        $data = $this->db->get('movie_actors')->result();

        return $data;
    }

    public function all_actors_nolimit_id() {
        $this->db->order_by('id', 'desc');
        $data = $this->db->get('movie_actors')->row();
        return $data->id;
    }

    public function populars($sort = 'week',$limit = '8') {

        $this->time_limit = $sort;
        $time = array(
            'week' => 'WEEK',
            'month' => 'MONTH',
            'year' => 'YEAR'
        );

        if ($this->time_limit) {

            $this->db->where('date > unix_timestamp(now() - interval 1 ' . $time[$this->time_limit] . ')');
        }
        $this->db->order_by('view', 'desc');
        $this->db->limit($limit);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function searchMovies($search) {

        $this->db->like('title_esp', $search);
        $this->db->or_like('title_eng', $search);
        $this->db->where('draft', 0);
        $this->db->where('active', 1);
        $data = $this->db->get('movies')->result();
        return $data;
    }

    public function searchDirected($search) {

        $this->db->like('title_esp', $search);
        $this->db->or_like('title_eng', $search);

        $data = $this->db->get('movie_rejisor')->result();
        return $data;
    }

    public function searchActors($search) {

        $this->db->like('title_esp', $search);
        $this->db->or_like('title_eng', $search);

        $data = $this->db->get('movie_actors')->result();

        return $data;
    }

    public function insertedID() {
        $data = array('date' => time(), 'active' => 0, 'draft' => 1);
        $this->db->insert('movies', $data);
        $last_id = $this->db->insert_id();
        return $last_id;
    }

    public function getAudio($movie_id) {
        $this->db->where('movie_id', $movie_id);
        $this->db->group_by('language');
        $data = $this->db->get('onlinemovie')->result();

        return $data;
    }
    
    
    
    public function getOnline($movie_id) {
        $this->db->where('movie_id', $movie_id);
        $this->db->order_by('quality','asc');
        $data = $this->db->get('onlinemovie')->result();

        return $data;
    }
    
    
    
    
    
    
}
