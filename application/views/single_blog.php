

    <!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0">
        <title>
            მთავარი გვერდის დასახელება</title>
        <meta name="keywords" content="მთავარი,გვერდი" />
        <meta name="description" content="მთავარი გვერდი" />
        <meta property="og:site_name" content="www.peliculas.is" />
        <meta property="og:title" content="<?=$blog->name?>" />
        <meta property="og:type" content="website">           
        <meta property="og:url" content="<?=base_url()?>home/blogView/<?=$blog->ID?>" />
        <meta property="og:description" content="<?=$blog->descrip?>" />
        <meta property="og:image" content="http://peliculas.is/public/images/logo.png">
        <meta property="og:image:type" content="image/jpg">
        <meta property="og:image:width" content="180">
        <meta property="og:image:height" content="102">
        <meta property="fb:app_id" content="385022118315699" />
        <!-- <base href="http://peliculas.is/public/" /> -->
        <link rel="canonical" href="http://peliculas.is/public/index/index/" />
        <link rel="stylesheet" href="<?=base_url()?>assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/bootstrap/css/bootstrap-theme.min.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- <link rel="stylesheet" href="<?=base_url()?>assets/css/font-awesome.min.css" /> -->
        <link rel="stylesheet" href="<?=base_url()?>assets/css/addons.css" />
        <link rel='stylesheet' href='<?=base_url()?>assets/css/googleapis.css' type='text/css'>
        <link rel="stylesheet" href="<?=base_url()?>assets/css/jquery.jscrollpane.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/styleNew.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/stylee.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/Style.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/movieNew.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/anythingslider.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/jquery-ui-1.11.4.custom/jquery-ui.css" type="text/css" media="screen, projection" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/mystylee.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/xfactor.css" />
        <link rel="stylesheet" href="<?=base_url()?>assets/css/cinema.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/css/movies.css">
        
        <link rel="stylesheet" href="<?=base_url()?>assets/css/video_containers.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/css/containers.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/css/jshowoff.css" type="text/css" />
        
<link rel="stylesheet" href="<?=base_url()?>assets/css/topmovies.css?v97">


    <body>

    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '1737282559844911',
          xfbml      : true,
          version    : 'v2.7'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
    </script>


<?php $this->load->view('inc/header');?>
<?php $this->load->view('inc/slider');?>


<div id="MainContent">
    <div class="center_content">

    <?php $this->load->view('inc/leftSideBar');?>

        <div class="right_content">
	       <div class="in-blog-post">
	       		<div class="in-blog-img">
	       			<img src="<?=$blog->img?>" class="img-responsive" >
	       		</div>
	       		<h1><?=$blog->name?></h1>
	       		<time><?=$blog->date?></time>
	       		<div class="blog-content mrg-top">
	       			<?=$blog->text?>
	       		</div>
	       		
	       </div>
	       <div class="fb-share-button" data-href="<?=base_url()?>home/view/<?=$blog->ID?>" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Share</a></div>

	       <div class="fb-comments" data-href="<?=current_url()?>" data-width="700" data-numposts="7"></div>
        </div>
        <div class="clear"></div>

       
    
</div>
</div>
