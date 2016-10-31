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
                        <h3>ჟანრები</h3>
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
                                <div class="panel-body">
                                    <table id="tabletools" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>დასახელება</th>
                                                <th>ფუნქციები</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($genres as $genre) { ?>
                                                <tr data-tid="<?= $genre->ID ?>">
                                                    <td><?= $genre->ID ?></td>

                                                    <td>
                                                        <?= $genre->name?>
                                                    </td>
                                            
                                                    <td>
                                                        <a href="<?= base_url() ?>admin/genre/edit/<?= $genre->ID ?>" class="sepV_a ext_disabled" title="Edit"><i class="icomoon-icon-pencil-3"></i></a>
                                                        <a href="#" class="sepV_a" title="View"><i class="icomoon-icon-eye-7"></i></a>
                                                        <a  class="delete" id="delete<?= $genre->ID ?>" data-id="<?= $genre->ID ?>" data-link="<?= base_url() ?>admin/genre/delete/" title="Delete"><i class="icomoon-icon-remove-3"></i></a>

                                                    </td>
                                                </tr>
                                            <?php } ?>
                                          
                                        </tbody>
                                    </table>

                                     <a href="<?=base_url()?>admin/genre/add" class="btn addBtn pull-right">ახალი ჟანრის დამატება</a>
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
        <script src="<?= base_url() ?>adm/plugins/charts/knob/jquery.knob.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.custom.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.pie.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.resize.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.time.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.growraf.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.categories.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.stack.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.orderBars.js"></script>
        <script src="<?= base_url() ?>adm/plugins/charts/flot/jquery.flot.tooltip.min.js"></script>
        <script src="<?= base_url() ?>adm/plugins/ui/waypoint/waypoints.js"></script>
        <script src="<?= base_url() ?>adm/plugins/forms/autosize/jquery.autosize.js"></script>
        <script src="<?= base_url() ?>adm/js/jquery.supr.js"></script>

        <script src="<?= base_url() ?>adm/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<?= base_url() ?>adm/plugins/tables/datatables/jquery.dataTables.js"></script>
        <script src="<?= base_url() ?>adm/plugins/tables/datatables/dataTables.tableTools.js"></script>
        <script src="<?= base_url() ?>adm/plugins/tables/datatables/dataTables.bootstrap.js"></script>
        <script src="<?= base_url() ?>adm/plugins/tables/datatables/dataTables.responsive.js"></script>

        <script src="<?= base_url() ?>adm/js/main.js"></script>
        <script src="<?= base_url() ?>adm/js/pages/tables-data.js"></script>
        <script src="<?=base_url()?>adm/js/jquery.confirm.js"></script>

        <script type="text/javascript">
             
        $('a.delete').click(function(e) {

        e.preventDefault();

        

            var id = $(this).data("id");

            var link = $(this).data("link");

            $.confirm({

            text: "ნამდვილად გსურთ წაშლა?",

            confirmButton: "დიახ",

            cancelButton: "უარყოფა",

            confirm: function() {

                    $.ajax({

                        type: 'get',

                        url: link,

                        data: 'id='+id,

            success: function() {

                    $("#delete"+id).closest('tr').remove();

                        }

                    });

                    },

            cancel: function() {

                // nothing to do

            }

        });

        });
        </script>
    </body>
</html>