<!doctype html>
<!--[if lt IE 8]><html class="no-js lt-ie8"> <![endif]-->
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Dashboard | Supr Admin Template</title>
        <!-- Mobile specific metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Force IE9 to render in normal mode -->
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="author" content="" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="application-name" content="" />
        <!-- Import google fonts - Heading first/ text second -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet" type="text/css">
        <!-- Css files -->
        <!-- Icons -->
        <link href="<?= base_url() ?>adm/css/icons.css" rel="stylesheet" />
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="<?= base_url() ?>adm/css/bootstrap.css" rel="stylesheet" />
        <!-- Plugins stylesheets (all plugin custom css) -->
        <link href="<?= base_url() ?>adm/css/plugins.css" rel="stylesheet" />
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link href="<?= base_url() ?>adm/plugins/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="<?= base_url() ?>adm/css/main.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="<?= base_url() ?>adm/css/custom.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="img/ico/apple-touch-icon-57-precomposed.png">
        <link rel="icon" href="img/ico/favicon.ico" type="image/png">
        <link rel="stylesheet" href="<?=base_url()?>adm/plugins/chosen/chosen.css" />
        <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
        <meta name="msapplication-TileColor" content="#3399cc" />
    </head>
    <body>
        <!--[if lt IE 9]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
        <!-- .#header -->
        <?php $this->load->view('admin/inc/header') ?>
        <!-- / #header -->
        <div id="wrapper">
            <!-- #wrapper -->
            <!--Sidebar background-->
            <?php $this->load->view('admin/inc/left_sidebar') ?>
            <!-- End #sidebar -->

            <!--Body content-->
            <div id="content" class="page-content clearfix">
                <div class="contentwrapper">
                    <!--Content wrapper-->
                    <div class="heading">
                        <!--  .heading-->
                        <h3>მომხმარებლები</h3>
                        <div class="resBtnSearch">
                            <a href="#"><span class="s16 icomoon-icon-search-3"></span></a>
                        </div>
                        <!--  /search -->
                        <ul class="breadcrumb">
                            <li>You are here:</li>
                            <li>
                                <a href="#" class="tip" title="back to dashboard">
                                    <i class="s16 icomoon-icon-screen-2"></i>
                                </a>
                                <span class="divider">
                                    <i class="s16 icomoon-icon-arrow-right-3"></i>
                                </span>
                            </li>
                            <li class="active">Blank Page</li>
                        </ul>
                    </div>
                    <!-- End  / heading-->
                    <!-- Start .row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default toggle panelMove panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">ფილმის დამატება</h4>
                                </div>
                                <div class="panel-body pb0">
                                   
                                    <form id="add" class="form-horizontal group-border hover-stripped" role="form" action="<?= base_url() ?>admin/movies/adddata/" enctype="multipart/form-data">
                                        <input type="hidden" name="id" id="id" value="<?=$lastid;?>" />
                                        
                                        <div class="form-group">

                                          <label for="" class="col-lg-2 col-md-3  control-label">ლინკის სახელი</label>
                                          <div class="row">
                                              <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                  <div class="input-group input-icon">
                                                      <input type="text" name="url_title" id="url_title" class="form-control">
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                        
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">საიტის მოკლე აღწერა</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <textarea name="meta_description" id="descrip" class="form-control"></textarea>
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>
                                        
                                      <div class="form-group">

                                          <label for="" class="col-lg-2 col-md-3  control-label">დასახელება</label>
                                          <div class="row">
                                              <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                  <div class="input-group input-icon">
                                                      <input type="text" name="name" id="name" class="form-control">
                                                  </div>
                                              </div>
                                          </div>
                                      </div>



                                      <div class="form-group">
                                            <label class="col-lg-2 col-md-3  control-label" for=""></label>
                                            <div class="row">
                                            <div class="col-lg-8 col-md-8">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-10 col-xs-10">
                                                         <div class="input-group input-icon">
                                                         <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <input id="release" type="text" class="form-control" name="year">
                                                             <!-- <input type="date" name="year" class="form-control"> -->
                                                             <span class="help-block text-center">წელი</span>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                         <span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                                                           <input id="runtime" type="text" class="form-control" name="durat">
                                                            <!-- <input type="time" name="durat" class="form-control"> -->
                                                            <span class="help-block text-center">ხანგრძლივობა</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>



                                          <div class="form-group">
                                              <label class="col-lg-2 col-md-3  control-label" for=""></label>
                                              <div class="row">
                                              <div class="col-lg-8 col-md-8">
                                                  <div class="row">
                                                      <div class="col-lg-6 col-md-6 col-sm-10 col-xs-10">
                                                       
                                                           <div class="input-group input-icon">
                                                               <input type="text" class="form-control" id="imdb" name="imdb" placeholder="IMDB">
                                                               <span class="help-block text-center">IMDB</span>
                                                          </div>
                                                      </div>
                                                      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                          <div class="input-group input-icon">
                                                              <input type="text" class="form-control" id="imdbLink" name="imdb_link" placeholder="IMDB link">
                                                              <span class="help-block text-center">IMDB link</span>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                          </div>





                                            <div class="form-group">
                                            <label class="col-lg-2 col-md-3 control-label" for="">რეჟისორი</label>
                                            <div class="row">
                                               <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                  <select class="form-control director"  name="director" id="director">
                                                        <a href=""><i class=" icomoon-icon-plus"></i>></a>
                                                      <?php 
                                                          foreach ($directors as $director) {  ?>
                                                           
                                                            <option value="<?=$director->ID?>"><?=$director->name?></option>

                                                     <?php       }
                                                      ?>
                                                    
                                                  </select>

                                              </div>
                                              <div class=" col-lg-1 col-md-1">
                                                <button type="button" class="btn btn-success btn-block  icomoon-icon-plus" data-toggle="modal" data-target="#adddirector"></button>
                                              </div>
                                            </div>
                                        </div>



                                        




                                      <div class="form-group">
                                            <label class="col-lg-2 col-md-3 control-label" for="">ჟანრი</label>
                                            <div class="row">
                                               <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <select  class="form-control select2" multiple name="genre[]" id="ganre">
                                                    <?php 
                                                        foreach ($genres as $genre) {  ?>
                                                         
                                                          <option value="<?=$genre->ID?>"><?=$genre->name?> <a href=""></a> </option>

                                                   <?php       }
                                                    ?>
                                                  
                                                </select>
                                              </div>

                                              <div class=" col-lg-1 col-md-1">
                                                <button type="button" class="btn btn-success btn-block  icomoon-icon-plus" data-toggle="modal" data-target="#addgenre"></button>
                                              </div>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-lg-2 col-md-3 control-label" for=""> პროდუსერი</label>
                                            <div class="row">
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <input id="creator" class="form-control" type="text" name="producer">
                                                </div>
                                              </div>
                                        </div>







                                        <div class="form-group">
                                            <label class="col-lg-2 col-md-3 control-label" for=""> მსახიობები</label>
                                            <div class="row">
                                               <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <select class="cast form-control select2" multiple name="actors[]" id="cast">
                                                    <?php 
                                                        foreach ($actors as $actor) {  ?>
                                                         
                                                          <option value="<?=$actor->ID?>"><?=$actor->name?></option>

                                                   <?php       }
                                                    ?>
                                                  
                                                </select>
                                              </div>
                                              <div class=" col-lg-1 col-md-1">
                                                <button type="button" class="btn btn-success btn-block  icomoon-icon-plus" data-toggle="modal" data-target="#addactor"></button>
                                                </div>
                                            </div>
                                        </div>




                                        <div class="form-group">

                                               <label for="" class="col-lg-2 col-md-3  control-label">სლოგანი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" id="tagline" name="slogan" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        

                                         <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">ბიუჯეტი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group">
                                                          <span class="input-group-addon">$</span>
                                                          <input type="number" class="form-control" name="budget" >
                                                          
                                                       </div>
                                                    </div>
                                              </div>
                                            
                                        </div>


                                         <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">Box Office</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                         <div class="input-group">
                                                          <span class="input-group-addon">$</span>
                                                          <input type="number" class="form-control" name="box_office" >
                                                          
                                                       </div>
                                                    </div>
                                              </div>
                                            
                                        </div>

                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">Trailer URL</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input id="trailer" type="text" class="form-control" name="trailer">
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>

                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">აღწერა</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <textarea name="descrip" class="form-control" rows="8"></textarea>
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>

                                        

                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">Rates</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" class="form-control" name="rates">
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>
                                        
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">keywords</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" class="form-control" id="keywords" name="keywords">
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>
                                        
                                        <div class="form-group">

                                              <label for="" class="col-lg-12 col-md-12  control-label">ყდის სურათი</label>
                                              <div class="row profile">
                                                  
                                                  <div class="col-md-2">
                                            <div class="profile-avatar">
                                                <img id="poster" alt="" src="img/avatars/128.jpg" width="120" style="border-radius:0;">
                                                
                                            </div>
                                        </div>
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                       
                                                        <div class="input-group input-icon">
                                                            <input name="img" id="img"  type="text" class="form-control">
                                                            <span class="input-group-btn">
                                                               <!--  <a class="btn btn-default" data-toggle="modal" data-target="#imgmodal">არჩევა</a> -->
                                                        <button class="btn btn-default mr5 mb10" data-toggle="modal" type="button" data-target="#myLargeModal"> არჩევა</button>
                                                            </span>


                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>


                                          <!-- online movie -->
                                          <div class="form-group">
                                            <div class="row">
                                              <label class="col-lg-2 col-md-3  control-label" > 
                                               <button type="button" class="btn btn-success btn-block mrg-left" data-toggle="modal" data-target="#addmovie">Add online movie</button>
                                              </label>

                                              <div class="onlinemovie col-lg-8">
                                                <div class="row">
                                                  
                                                </div>  
                                              </div>
                                                  
                                            </div>
                                          </div>


                                             <!-- torrentlink -->
                                        <div class="form-group">
                                          <div class="row">
                                            <label class="col-lg-2 col-md-3  control-label" > 
                                              <button type="button" class="btn btn-success btn-block mrg-left" data-toggle="modal" data-target="#addtorrent">Add torrent link</button>
                                            </label>

                                            <div class="torrentlink col-lg-8">
                                              <div class="row">
                                                
                                              </div>  
                                            </div>
                                                
                                          </div>
                                        </div>



                                      

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button id="save" type="button" class="save btn btn-default">შენახვა</button>
                                            </div>
                                        </div>


                                      
                                    </form>








                                     



                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End contentwrapper -->
            </div>
            <!-- End #content -->


            <!-- picture modal -->

            <div class="modal fade" id="myLargeModal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                               <iframe width="100%" height="700" frameborder="0" src="<?= base_url() ?>filemanager/dialog.php?type=1&field_id=img&relative_url=0"></iframe>
                            </div>
                            <!-- <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div> -->
                        </div>
                    </div>
                </div>
                <!-- /.modal -->



                <!-- online movie modal -->

            <div class="modal fade" id="addmovie" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Add online movie</h4>
                            </div>
                            <div class="modal-body">
                                  

                            <form id="onlinemovieadd" class="form-horizontal group-border hover-stripped onlinemovieadd" role="form" action="<?= base_url() ?>admin/movies/addonlinemovie/" enctype="multipart/form-data">
                             
                              <input type="hidden" name="id" id="id" value="<?=$lastid;?>" />

                               <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ენა</label>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <select class="form-control" name="language">
                                                <?php   
                                                foreach ($languages as $language) {
                                                  
                                                ?>
                                                    <option value="<?=$language->ID?>"><?=$language->name?></option>
                                                    <?php   
                                                }
                                                ?>
                                              </select>
                                        </div>
                                    </div>
                              </div>
                              <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ფილმის ლინკი</label>
                                    <div class="row">
                                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <div class="input-group input-icon">
                                                  <input type="text" class="form-control" name="link">
                                              </div>
                                          </div>
                                    </div>
                                  
                              </div>

                              <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ფილმის ხარისხი</label>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <select class="form-control" name="quality">
                                                  <?php   
                                                foreach ($qualities as $quality) {
                                                  
                                                ?>
                                                    <option value="<?=$language->ID?>"><?=$quality->name?></option>
                                                    <?php   
                                                }
                                                ?>

                                              </select>
                                        </div>
                                    </div>
                              </div>

                              <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">სერვერი</label>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <select class="form-control" name="servers">
                                                    <?php   
                                                foreach ($servers as $server) {
                                                  
                                                ?>
                                                    <option value="<?=$server->ID?>"><?=$server->name?></option>
                                                    <?php   
                                                }
                                                ?>
                                              </select>
                                        </div>
                                    </div>
                              </div>


                            </form>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="addonlinemovie btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->



                <!-- torrent modal -->

            <div class="modal fade" id="addtorrent" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                             
                            <form id="torrentadd" class="form-horizontal group-border hover-stripped onlinemovieadd" role="form" action="<?= base_url() ?>admin/movies/addtorrent/" enctype="multipart/form-data">
                             
                              <input type="hidden" name="id" id="id" value="<?=$lastid;?>" />

                               <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ენა</label>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <select class="form-control" name="language">
                                                <?php   
                                                foreach ($languages as $language) {
                                                  
                                                ?>
                                                    <option value="<?=$language->ID?>"><?=$language->name?></option>
                                                    <?php   
                                                }
                                                ?>
                                              </select>
                                        </div>
                                    </div>
                              </div>
                              <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ფილმის ლინკი</label>
                                    <div class="row">
                                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <div class="input-group input-icon">
                                                  <input type="text" class="form-control" name="link">
                                              </div>
                                          </div>
                                    </div>
                                  
                              </div>

                              <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ფილმის ხარისხი</label>
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <select class="form-control" name="quality">
                                                  <?php   
                                                foreach ($qualities as $quality) {
                                                  
                                                ?>
                                                    <option value="<?=$language->ID?>"><?=$quality->name?></option>
                                                    <?php   
                                                }
                                                ?>

                                              </select>
                                        </div>
                                    </div>
                              </div>

                               <div class="form-group">
                                    <label for="" class="col-lg-2 col-md-3  control-label">ფილმის ზომა</label>
                                    <div class="row">
                                         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                              <div class="input-group input-icon">
                                                  <input type="text" class="form-control" name="size">
                                              </div>
                                          </div>
                                    </div>
                                  
                              </div>



                            </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary addTorrent">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. torrent modal -->





       <!-- director modal -->

            <div class="modal fade" id="adddirector" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Add director</h4>
                            </div>
                            <div class="modal-body">
                                  

                            <form id="directoradd" class="form-horizontal group-border hover-stripped onlinemovieadd" role="form" action="<?= base_url() ?>admin/movies/directedAddModal/" enctype="multipart/form-data">
                             


                             <input type="hidden" name="id" id="id" />
                                        <div class="form-group">

                                            <label for="" class="col-lg-2 col-md-3  control-label">სახელი</label>
                                            <div class="row">
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="input-group input-icon">
                                                        <input type="text" name="name" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-lg-2 col-md-3  control-label">ნამდვილი სახელი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="real_name" class="form-control">
                                                        </div>
                                                    </div>
                                              </div> 
                                        </div>
                                        <div class="form-group">

                                               <label for="" class="col-lg-2 col-md-3  control-label">დაბადების თარიღი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="date" name="birthdate" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">დაბადების ადგილი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="birth_loc" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">პროფესია</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="proff" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">სიმაღლე</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="height" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">რეიტინგი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="raiting" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>
                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">ბიოგრაფია</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <textarea name="biography" class="form-control" rows="8"></textarea>
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>


                                <input type="hidden" name="img" class="form-control hidden">
                                        
                            
                            </form>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="adddirector btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. director modal -->





       <!-- genre modal -->

            <div class="modal fade" id="addgenre" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Add director</h4>
                            </div>
                            <div class="modal-body">
                                  

                            <form id="genreadd" class="form-horizontal group-border hover-stripped onlinemovieadd" role="form" action="<?= base_url() ?>admin/movies/genreAddModal/" enctype="multipart/form-data">
                             
                                    <input type="hidden" name="id" id="id" />
                                        <div class="form-group">

                                            <label for="" class="col-lg-2 col-md-3  control-label">სახელი</label>
                                            <div class="row">
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="input-group input-icon">
                                                        <input type="text" name="name" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                     

                                      

                            
                            </form>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="addgenre btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. genre modal -->







                 <!-- actors modal -->

            <div class="modal fade" id="addactor" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">Add director</h4>
                            </div>
                            <div class="modal-body">
                                  

                            <form id="actoradd" class="form-horizontal group-border hover-stripped onlinemovieadd" role="form" action="<?= base_url() ?>admin/movies/actorAddModal/" enctype="multipart/form-data">
                             
                                    <input type="hidden" name="id" id="id"  />
                                        <div class="form-group">

                                            <label for="" class="col-lg-2 col-md-3  control-label">სახელი</label>
                                            <div class="row">
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="input-group input-icon">
                                                        <input type="text" name="name" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="" class="col-lg-2 col-md-3  control-label">ნამდვილი სახელი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="real_name" class="form-control">
                                                        </div>
                                                    </div>
                                              </div> 
                                        </div>
                                        <div class="form-group">

                                               <label for="" class="col-lg-2 col-md-3  control-label">დაბადების თარიღი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="date" name="birthdate" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">დაბადების ადგილი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="birth_loc" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">პროფესია</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="proff" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">სიმაღლე</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="height" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>

                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">რეიტინგი</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <input type="text" name="raiting" class="form-control">
                                                        </div>
                                                    </div>
                                              </div>
                                        </div>
                                        <div class="form-group">

                                              <label for="" class="col-lg-2 col-md-3  control-label">ბიოგრაფია</label>
                                              <div class="row">
                                                   <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <textarea name="biography" class="form-control" rows="8"></textarea>
                                                        </div>
                                                    </div>
                                              </div>
                                            
                                        </div>

                                        
                                                            <input name="img" id="img"  type="hidden" class="form-control">
                                                          
                                      

                            
                            </form>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="addactor btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. actors modal -->







            <?php $this->load->view('admin/inc/footer') ?>
            <!-- End #footer  -->
        </div>
        <!-- / #wrapper -->
        <!-- Back to top -->
        <div id="back-to-top"><a href="#">Back to Top</a>
        </div>
        <!-- Javascripts -->
        <!-- Load pace first -->
        <script src="<?= base_url() ?>adm/plugins/core/pace/pace.min.js"></script>
        <!-- Important javascript libs(put in all pages) -->
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script>
            window.jQuery || document.write('<script src="<?= base_url() ?>adm/js/libs/jquery-2.1.1.min.js">\x3C/script>')
        </script>
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
            window.jQuery || document.write('<script src="<?= base_url() ?>adm/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
        </script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script>
            window.jQuery || document.write('<script src="<?= base_url() ?>adm/js/libs/jquery-migrate-1.2.1.min.js">\x3C/script>')
        </script>
        <!--[if lt IE 9]>
  <script type="text/javascript" src="<?= base_url() ?>adm/js/libs/excanvas.min.js"></script>
  <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script type="text/javascript" src="<?= base_url() ?>adm/js/libs/respond.min.js"></script>
<![endif]-->
        <!-- Bootstrap plugins -->
        <script src="<?= base_url() ?>adm/js/bootstrap/bootstrap.js"></script>
        <!-- Core plugins ( not remove ) -->
        <script src="<?= base_url() ?>adm/js/libs/modernizr.custom.js"></script>
        <!-- Handle responsive view functions -->
        <script src="<?= base_url() ?>adm/js/jRespond.min.js"></script>
        <!-- Custom scroll for sidebars,tables and etc. -->
        <script src="<?= base_url() ?>adm/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<?= base_url() ?>adm/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
        <!-- Remove click delay in touch -->
        <script src="<?= base_url() ?>adm/plugins/core/fastclick/fastclick.js"></script>
        <!-- Increase jquery animation speed -->
        <script src="<?= base_url() ?>adm/plugins/core/velocity/jquery.velocity.min.js"></script>
        <!-- Quick search plugin (fast search for many widgets) -->
        <script src="<?= base_url() ?>adm/plugins/core/quicksearch/jquery.quicksearch.js"></script>
        <!-- Bootbox fast bootstrap modals -->
        <script src="<?= base_url() ?>adm/plugins/ui/bootbox/bootbox.js"></script>
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="<?= base_url() ?>adm/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/fancyselect/fancySelect.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/select2/select2.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/maskedinput/jquery.maskedinput.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/dual-list-box/jquery.bootstrap-duallistbox.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/spinner/jquery.bootstrap-touchspin.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/bootstrap-datepicker/bootstrap-datepicker.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/bootstrap-timepicker/bootstrap-timepicker.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/bootstrap-colorpicker/bootstrap-colorpicker.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
        <script src="<?= base_url() ?>adm/js/libs/typeahead.bundle.js"></script>
        <script src="<?= base_url() ?>adm/js/libs/jquery.inputMeter.min.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/bootstrap-markdown/bootstrap-markdown.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/dropzone/dropzone.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<?= base_url() ?>adm/plugins/ui/title-notifier/title_notifier.js"></script>
        <script src="<?= base_url() ?>adm/plugins/ui/notify/jquery.gritter.js"></script>
        <script src="<?= base_url() ?>adm/js/jquery.supr.js"></script>
        <script src="<?= base_url() ?>adm/js/main.js"></script>
      
        
     

    <script type="text/javascript" src="<?= base_url() ?>adm/plugins/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
    <script src="<?= base_url() ?>adm/plugins/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <script src="<?=base_url()?>adm/plugins/chosen/chosen.jquery.min.js"></script>  
    <script src="<?= base_url() ?>adm/plugins/tinymce/jquery.tinymce.min.js"></script>
        <script>
            $("#url_title").inputMeter( {maxLength: 100, warnLength: 80} );
            $("#descrip").inputMeter( {maxLength: 255, warnLength: 255} );
            $(document).ready(function () {


                $('.select2').select2({placeholder: 'Select state'});
                $("#basic-datepicker").datepicker();
                 $('#default-timepicker').timepicker({
                      upArrowStyle: 'fa fa-angle-up',
                      downArrowStyle: 'fa fa-angle-down',
                  });
                  $("#name").keyup(function () {
                    var title = $(this).val();
                    
                    $.ajax({
                        type: "POST",
                        url: '<?=base_url()?>admin/movies/imdb',
                        data: 'title='+title,
                        cache: false,
                        success: function (json) {
                            var arr = JSON.parse(json);
//                            var str = arr.castinsert;
//                            var jsonString = JSON.stringify(str);
                            
                            //function success
                           $('#director').append($("<option selected></option>").attr("value", arr.director).text(arr.director));
                           $.each(arr.castinsert, function(k, v) {
                                $('<option>').val(v.id).text(v.name).appendTo('#cast');
                            });
                           $("#cast").select2().val(arr.cast).trigger("change");
                           $('#imdb').val(arr.rating);
                           $('#release').val(arr.release);
                           $('#runtime').val(arr.runtime);
                           $('#imdbLink').val(arr.imdbLink);
                           $('#creator').val(arr.creator);
                           $('#tagline').val(arr.tagline);
                           $('#keywords').val(arr.keywords);
                           $('#img').val(arr.poster);
                           $('#poster').attr("src",arr.poster);
                           
                           $.each(arr.ganreinsert, function(k, v) {
                                $('<option>').val(v.id).text(v.name).appendTo('#ganre');
                            });
                            $("#ganre").select2().val(arr.ganre).trigger("change");
    
                           $('#trailer').val(arr.trailer);
                           
                           //console.log(arr.ganre);
                           
                        },
                    });
                    return false;
                });
                  
                $(".save").on("click", function () {
                    $.ajax({
                        type: "POST",
                        url: $("#add").attr('action'),
                        data: $("#add").serialize(),
                        cache: false,
                        success: function (json) {
                            var arr = JSON.parse(json);
                            //function success
                            // $('.message').html(data);

                            $.gritter.add({
                                // (string | mandatory) the heading of the notification
   
                                // (string | mandatory) the text inside the notification
                                text: arr.message,
                                // (int | optional) the time you want it to be alive for before fading out
                                time: '1000',
                                // (string) specify font-face icon  class for close message
                                close_icon: 'entypo-icon-cancel s12',
                                // (string) specify font-face icon class for big icon in left. if are specify image this will not show up.
                                icon: 'icomoon-icon-database ',
                                // (string | optional) the class name you want to apply to that specific message
                                class_name: arr.success
                            });

                        },
                    });
                    return false;
                });


         $('.addonlinemovie').click(function () {
            // var id = $(this).data("userid");
            // alert(id);



            $.ajax({
                type: "POST",
                url: $("#onlinemovieadd").attr('action'),
                data: $("#onlinemovieadd").serialize(),
                cache: false,
                success: function (data) {
                    //response = jQuery.parseJSON(data);
                    //function success

                    $('.onlinemovie .row').html(data);
                    noty({
                        text: 'Sucess add torrent link',
                        type: 'success',
                        theme: 'tisa_theme',
                        layout: 'topRight',
                        closeWith: ['button'],
                        killer: true
                    });
                },
                error: function (data) {
                    //function success
                    noty({
                        text: 'Error to add torrent link',
                        type: 'error',
                        theme: 'tisa_theme',
                        layout: 'topRight',
                        closeWith: ['button'],
                        killer: true
                    });


                }
            });

        });


                 $('.addTorrent').click(function () {
            var id = $(this).data("userid");
            //alert(id);



            $.ajax({
                type: "POST",
                url: $("#torrentadd").attr('action'),
                data: $("#torrentadd").serialize(),
                cache: false,
                success: function (data) {
                    //response = jQuery.parseJSON(data);
                    //function success

                    $('.torrentlink .row').html(data);
                    noty({
                        text: 'Sucess add torrent link',
                        type: 'success',
                        theme: 'tisa_theme',
                        layout: 'topRight',
                        closeWith: ['button'],
                        killer: true
                    });
                },
                error: function (data) {
                    //function success
                    noty({
                        text: 'Error to add torrent link',
                        type: 'error',
                        theme: 'tisa_theme',
                        layout: 'topRight',
                        closeWith: ['button'],
                        killer: true
                    });


                }
            });

        });



        $('.adddirector').click(function (event) {
            event.preventDefault();

            $('.ajax_status').show();
            $.post($("#directoradd").attr('action'), $("#directoradd").serialize(), function (data) {
                $('.close').trigger('click');
                if (!data) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }
                data = $.parseJSON(data);
                if (!data.id) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }
                $('#director').append($("<option selected></option>").attr("value", data.id).text(data.title));
                $('.close').trigger('click');
            });

        }); 




        $('.addgenre').click(function (event) {
            event.preventDefault();

            $('.ajax_status').show();
            $.post($("#genreadd").attr('action'), $("#genreadd").serialize(), function (data) {
                $('.close').trigger('click');
                if (!data) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }
                data = $.parseJSON(data);
                if (!data.id) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }

               

                $('#genre').select2('data',data);
                $('.close').trigger('click');
               
            });

        }); 





           $('.addactor').click(function (event) {
            event.preventDefault();

            $('.ajax_status').show();
            $.post($("#actoradd").attr('action'), $("#actoradd").serialize(), function (data) {
                $('.close').trigger('click');
                if (!data) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }
                data = $.parseJSON(data);
                if (!data.id) {
                    $('.ajax_status').html('მოხდა შეცდომა, სცადეთ თავიდან');
                    return false;
                }

               

                $('#actor').select2('data',data);
                $('.close').trigger('click');
              
            });

        }); 



            });
        </script>


    </body>
</html>