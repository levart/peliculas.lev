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
        <link href="<?= base_url() ?>admcss/plugins/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" />
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
                                    <h4 class="panel-title">ადმინების დამატება</h4>
                                </div>
                                <div class="panel-body pb0">
                                    
                                    <form id="add" class="form-horizontal group-border hover-stripped" role="form" action="<?= base_url() ?>admin/admin/adddata/">
                                        <div class="form-group">
                                            <label for="" class="col-lg-2 col-md-3  control-label">პიროვნება</label>
                                            <div class="col-lg-10 col-md-9">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <span class="input-group-addon"><i class="icomoon-icon-user s16"></i></span>
                                                            <input type="text" placeholder="მეტსახელი" name="username" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="input-group input-icon">
                                                            <span class="input-group-addon"><i class="icomoon-icon-mail-send s16"></i> </span>
                                                            <input type="text" placeholder="ელ.ფოსტა" name="email" class="form-control">
                                                            
                                                        </div>
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
        <script src="<?= base_url() ?>admcss/plugins/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
        <!-- TinyMce WYSIWG editor -->
	<script src="<?= base_url() ?>admcss/plugins/tinymce/jquery.tinymce.min.js"></script>
        <script>
            
            $(document).ready(function () {
                
                
                
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
            });
        </script>
    </body>
</html>