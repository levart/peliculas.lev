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
        <link href="<?=base_url()?>adm/css/icons.css" rel="stylesheet" />
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="<?=base_url()?>adm/css/bootstrap.css" rel="stylesheet" />
        <!-- Plugins stylesheets (all plugin custom css) -->
        <link href="<?=base_url()?>adm/css/plugins.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="<?=base_url()?>adm/css/main.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="<?=base_url()?>adm/css/custom.css" rel="stylesheet" />
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
        <?php $this->load->view('admin/inc/header');?>
        <!-- / #header -->
        <div id="wrapper">
            <!-- #wrapper -->
            <!--Sidebar background-->
            <?php $this->load->view('admin/inc/left_sidebar');?>
            <!-- End #sidebar -->

            <!--Body content-->
            <div id="content" class="page-content clearfix">
                <div class="contentwrapper">
                    <!--Content wrapper-->
                    <div class="heading">
                        <!--  .heading-->
                        <h3>Dashboard</h3>
                        <div class="resBtnSearch">
                            <a href="#"><span class="s16 icomoon-icon-search-3"></span></a>
                        </div>
                        <div class="search">
                            <!-- .search -->
                            <form id="searchform" class="form-horizontal" action="search.html">
                                <input type="text" class="top-search from-control" placeholder="Search here ..." />
                                <input type="submit" class="search-btn" value="" />
                            </form>
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
                    <div class="row">
                        <!-- .row -->
                        <div class="col-md-8">
                            <!-- col-md-8 start here -->
                            <div class="row">
                                <!-- .row start -->
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                    <!-- .col-md-3 -->
                                    <a href="#" title="I`m with gradient" class="stats-btn tipB mb20">
                                        <i class="icon icomoon-icon-users"></i>
                                        <span class="txt">Users</span>
                                        <span class="notification">5</span>
                                    </a>
                                </div>
                                <!-- / .col-md-3 -->
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                    <!-- .col-md-3 -->
                                    <a href="#" class="stats-btn mb20">
                                        <i class="icon icomoon-icon-support"></i>
                                        <span class="txt">Support tickets</span>
                                        <span class="notification blue">12</span>
                                    </a>
                                </div>
                                <!-- / .col-md-3 -->
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                    <!-- .col-md-3 -->
                                    <a href="#" title="I`m with pattern" class="stats-btn pattern tipB mb20">
                                        <i class="icon icomoon-icon-bubbles-2"></i>
                                        <span class="txt">New Comments</span>
                                        <span class="notification green">23</span>
                                    </a>
                                </div>
                                <!-- / .col-md-3 -->
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                    <!-- .col-md-3 -->
                                    <a href="#" class="stats-btn mb20">
                                        <i class="icon icomoon-icon-basket"></i>
                                        <span class="txt">Orders</span>
                                        <span class="notification">+5</span>
                                    </a>
                                </div>
                                <!-- / .col-md-3 -->
                            </div>
                            <!-- / .row -->
                        </div>
                        <!-- col-md-8 end here -->
                        <div class="col-md-4">
                            <!-- col-md-4 start here -->
                            <div class="text-center">
                                <div dir="ltr" class="circle-stats mb10">
                                    <div class="circular-item tipB" title="Site overload">
                                        <i class="icon icomoon-icon-fire"></i>
                                        <input type="text" value="62" class="redCircle" />
                                    </div>
                                    <div class="circular-item tipB" title="Site average load time">
                                        <i class="icon icomoon-icon-busy"></i>
                                        <input type="text" value="12" class="blueCircle" />
                                    </div>
                                    <div class="circular-item tipB" title="Target complete">
                                        <i class="icon icomoon-icon-target-2"></i>
                                        <input type="text" value="94" class="greenCircle" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- col-md-4 end here -->
                    </div>
                    <!-- / .row -->
                    <div class="row">
                        <!-- .row start -->
                        <div class="col-md-8">
                            <!-- col-md-8 start here -->
                            <div class="panel panel-default chart">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <i class="s16 icomoon-icon-bars"></i>
                                        <span>Visitors chart</span>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="visitors-chart mt15 mb15" style="height: 230px; width:100%;"></div>
                                    <div class="row">
                                        <!-- .row start -->
                                        <div class="col-md-3 col-md-3 col-sm-3 col-xs-6">
                                            <!-- col-md-3 start here -->
                                            <a href="#" class="chartShortcuts">
                                                <span class="head">Total Visits</span>
                                                <span class="number">509</span>
                                            </a>
                                        </div>
                                        <!-- col-md-3 end here -->
                                        <div class="col-md-3 col-md-3 col-sm-3 col-xs-6">
                                            <!-- col-md-3 start here -->
                                            <a href="#" class="chartShortcuts">
                                                <span class="head">Uniqiue Visits</span>
                                                <span class="number">309</span>
                                            </a>
                                        </div>
                                        <!-- col-md-3 end here -->
                                        <div class="col-md-3 col-md-3 col-sm-3 col-xs-6">
                                            <!-- col-md-3 start here -->
                                            <a href="#" class="chartShortcuts">
                                                <span class="head">External Visits</span>
                                                <span class="number">109</span>
                                            </a>
                                        </div>
                                        <!-- col-md-3 end here -->
                                        <div class="col-md-3 col-md-3 col-sm-3 col-xs-6">
                                            <!-- col-md-3 start here -->
                                            <a href="#" class="chartShortcuts">
                                                <span class="head">Impressions</span>
                                                <span class="number">325</span>
                                            </a>
                                        </div>
                                        <!-- col-md-3 end here -->
                                    </div>
                                    <!-- / .row -->
                                </div>
                            </div>
                            <!-- End .panel -->
                            <div class="row">
                                <!-- .row start -->
                                <div class="col-md-6">
                                    <!-- col-md-6 start here -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <span class="s16 icomoon-icon-pie"></span>
                                                <span>Visitors overview</span>
                                            </h4>
                                        </div>
                                        <div class="panel-body">
                                            <div class="pieStats" style="height: 221px; width:100%;"></div>
                                        </div>
                                    </div>
                                    <!-- End .panel -->
                                    <div class="panel panel-default toggle panelClose panelRefresh">
                                        <!-- Start .panel -->
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="icomoon-icon-instagram"></i> Instagram activity</h4>
                                        </div>
                                        <div class="panel-body p0">
                                            <div class="instagram-widget">
                                                <!-- .instagram widget -->
                                                <div class="instagram-widget-header">
                                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="instagram-widget-text">Followers</p>
                                                            <strong class="instagram-widget-number">1256</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="instagram-widget-text">Following</p>
                                                            <strong class="instagram-widget-number">345</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                    <div class="col-lg-4 col-md-4 col-xs-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="instagram-widget-text">Shots</p>
                                                            <strong class="instagram-widget-number">176</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                </div>
                                                <div class="instagram-widget-image">
                                                    <div id="instagram-widget" class="carousel slide">
                                                        <!-- Indicators -->
                                                        <ol class="carousel-indicators dotstyle">
                                                            <li data-target="#instagram-widget" data-slide-to="0" class="active"><a href="#">Image 1</a>
                                                            </li>
                                                            <li data-target="#instagram-widget" data-slide-to="1"><a href="#">Image 2</a>
                                                            </li>
                                                            <li data-target="#instagram-widget" data-slide-to="2"><a href="#">Image 3</a>
                                                            </li>
                                                        </ol>
                                                        <div class="carousel-inner">
                                                            <figure class="item active">
                                                                <img class="img-responsive" src="img/gallery/1.jpg" alt="image">
                                                            </figure>
                                                            <figure class="item">
                                                                <img class="img-responsive" src="img/gallery/2.jpg" alt="image">
                                                            </figure>
                                                            <figure class="item">
                                                                <img class="img-responsive" src="img/gallery/3.jpg" alt="image">
                                                            </figure>
                                                        </div>
                                                    </div>
                                                    <!-- End Carousel -->
                                                </div>
                                                <div class="instagram-widget-footer">
                                                    <div class="col-lg-6 col-md-6 col-xs-6 text-center">
                                                        <!-- col-lg-6 start here -->
                                                        <p>
                                                            <a href="#">
                                                                <i class=" icomoon-icon-bubbles-4 mr5"></i> 
                                                                <strong class="instagram-widget-number">17</strong>
                                                            </a>
                                                        </p>
                                                    </div>
                                                    <!-- col-lg-6 end here -->
                                                    <div class="col-lg-6 col-md-6 col-xs-6 text-center">
                                                        <!-- col-lg-6 start here -->
                                                        <p>
                                                            <a href="#">
                                                                <i class="icomoon-icon-heart-4 mr5"></i> 
                                                                <strong class="instagram-widget-number">27</strong> 
                                                            </a>
                                                        </p>
                                                    </div>
                                                    <!-- col-lg-6 end here -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.instagram widget -->
                                    </div>
                                    <!-- End .panel -->
                                </div>
                                <!-- col-md-6 end here -->
                                <div class="col-md-6">
                                    <!-- col-md-6 start here -->
                                    <div class="panel panel-default toggle panelClose panelRefresh panelMove">
                                        <!-- Start .panel -->
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="icomoon-icon-stats-up"></i> Vital stats</h4>
                                        </div>
                                        <div class="panel-body">
                                            <div class="vital-stats">
                                                <!-- Vital stats -->
                                                <ul class="list-unstyled">
                                                    <li>
                                                        <span class="s24 icomoon-icon-arrow-up-2 color-green"></span> 81% Clicks
                                                        <span class="pull-right strong">567</span>
                                                        <div class="progress progress-striped animated-bar mt0">
                                                            <div class="progress-bar" role="progressbar" data-transitiongoal="81"></div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <span class="s24 icomoon-icon-arrow-up-2 color-green"></span> 72% Uniquie Clicks
                                                        <span class="pull-right strong">507</span>
                                                        <div class="progress progress-striped animated-bar mt0">
                                                            <div class="progress-bar progress-bar-success" role="progressbar" data-transitiongoal="72"></div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <span class="s24 icomoon-icon-arrow-down-2 color-red"></span> 53% Impressions
                                                        <span class="pull-right strong">457</span>
                                                        <div class="progress progress-striped animated-bar mt0">
                                                            <div class="progress-bar progress-bar-warning" role="progressbar" data-transitiongoal="53"></div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <span class="s24 icomoon-icon-arrow-up-2 color-green"></span> 15% Online Users
                                                        <span class="pull-right strong">8</span>
                                                        <div class="progress progress-striped animated-bar mt0">
                                                            <div class="progress-bar progress-bar-danger" role="progressbar" data-transitiongoal="15"></div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- / Vital stats -->
                                        </div>
                                    </div>
                                    <!-- End .panel -->
                                    <div class="panel panel-default toggle panelClose panelRefresh">
                                        <!-- Start .panel -->
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="icomoon-icon-twitter"></i> From twitter</h4>
                                        </div>
                                        <div class="panel-body p0">
                                            <div class="twitter-widget">
                                                <!-- .twitter widget -->
                                                <div class="twitter-widget-header">
                                                    <div class="col-lg-4 col-md-4 col-sm-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="twitter-widget-text">Followers</p>
                                                            <strong class="twitter-widget-number">17523</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                    <div class="col-lg-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="twitter-widget-text">Following</p>
                                                            <strong class="twitter-widget-number">562</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                    <div class="col-lg-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                        <!-- col-lg-4 start here -->
                                                        <a href="#">
                                                            <p class="twitter-widget-text">Tweets</p>
                                                            <strong class="twitter-widget-number">2450</strong> 
                                                        </a>
                                                    </div>
                                                    <!-- col-lg-4 end here -->
                                                </div>
                                                <div class="twitter-widget-tweets">
                                                    <ul>
                                                        <li>
                                                            <img class="twitter-widget-avatar" src="img/avatars/1.jpg" alt="">
                                                            <p class="tweet-text">
                                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, dolorum, consequatur, cum itaque beatae voluptatem commodi maiores <a href="#">...</a>
                                                            </p>
                                                            <span class="twitter-widget-date">12:55 PM - 24 Apr 2014</span>
                                                        </li>
                                                        <li>
                                                            <img class="twitter-widget-avatar" src="img/avatars/2.jpg" alt="">
                                                            <p class="tweet-text">
                                                                Provident, deserunt reprehenderit fugit quo laboriosam rem soluta amet dolorum id aliquid ipsam voluptates at tenetur debitis veniam libero <a href="#">...</a>
                                                            </p>
                                                            <span class="twitter-widget-date">12:55 PM - 24 Apr 2014</span>
                                                        </li>
                                                        <li>
                                                            <img class="twitter-widget-avatar" src="img/avatars/3.jpg" alt="">
                                                            <p class="tweet-text">
                                                                Soluta, cumque, qui quas ipsa accusantium sequi nostrum consequuntur dolorum nisi omnis debitis vero nobis <a href="#">...</a>
                                                            </p>
                                                            <span class="twitter-widget-date">12:55 PM - 24 Apr 2014</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- / .twitter widget -->
                                    </div>
                                    <!-- / .panel -->
                                </div>
                                <!-- col-md-6 end here -->
                            </div>
                            <!-- / .row -->
                        </div>
                        <!-- col-md-8 end here -->
                        <div class="col-md-4">
                            <!-- col-md-4 start here -->
                            <div class="sparkStats mb25">
                                <!-- .sparkStats -->
                                <h4>389 people visited this site
                                    <a href="#" class="icon tip pull-right mr15" title="Configure"><i class="s16 icomoon-icon-cog-2 mr0"></i></a>
                                </h4>
                                <ul class="list-unstyled">
                                    <li><span class="sparkLine1 "></span> Visits: <span class="number">509</span>
                                    </li>
                                    <li>
                                        <span class="sparkLine2"></span>
                                        Unique Visitors:
                                        <span class="number">389</span>
                                    </li>
                                    <li><span class="sparkLine3"></span> Pageviews:
                                        <span class="number">731</span>
                                    </li>
                                    <li><span class="sparkLine4"></span>
                                        Pages / Visit:
                                        <span class="number">1.44</span>
                                    </li>
                                    <li><span class="sparkLine5"></span>
                                        Avg. Visit Duration:
                                        <span class="number">00:01:21</span>
                                    </li>
                                    <li><span class="sparkLine6"></span>
                                        Bounce Rate: <span class="number">68.37%</span>
                                    </li>
                                    <li><span class="sparkLine7"></span>
                                        % New Visits:
                                        <span class="number">76.23%</span>
                                    </li>
                                </ul>
                                <div class="pt15">
                                    <a href="charts.html" class="btn btn-info">View full statistic <i class="s16 icomoon-icon-arrow-right-3 color-white"></i></a>
                                </div>
                            </div>
                            <!-- End .sparkStats -->
                            <div class="reminder mb25">
                                <!-- .reminder -->
                                <h4>Things you need to do
                                    <a href="#" class="icon tip pull-right mr15" title="Configure"><span class="s16 icomoon-icon-cog-2 mr0"></span></a>
                                </h4>
                                <ul>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <span class="s32 icomoon-icon-basket color-gray"></span>
                                        </div>
                                        <span class="number">7</span> 
                                        <span class="txt">Pending Orders</span>
                                        <a class="btn btn-warning">go</a>
                                    </li>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <span class="s32 icomoon-icon-support color-red"></span>
                                        </div>
                                        <span class="number">3</span> 
                                        <span class="txt">Support Tickets </span>
                                        <a class="btn btn-warning">go</a>
                                    </li>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <span class="s32 icomoon-icon-new color-green"></span>
                                        </div>
                                        <span class="number">5</span> 
                                        <span class="txt">New Invoices </span>
                                        <a class="btn btn-warning">go</a>
                                    </li>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <span class="s32 icomoon-icon-bubbles-2 color-blue"></span>
                                        </div>
                                        <span class="number">13</span> 
                                        <span class="txt">Review Comments</span> 
                                        <a class="btn btn-warning">go</a>
                                    </li>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <span class="s32 icomoon-icon-cog color-dark"></span>
                                        </div>
                                        <span class="number">2</span> 
                                        <span class="txt">Settings to Change </span>
                                        <a class="btn btn-warning">go</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- End .reminder -->
                            <div class="panel panel-default toggle panelClose panelRefresh panelMove">
                                <!-- Start .panel -->
                                <div class="panel-heading">
                                    <h4 class="panel-title">Todo</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="todo-widget">
                                        <!-- .todo-widget -->
                                        <div class="todo-header">
                                            <div class="todo-search">
                                                <form>
                                                    <input type="text" class="form-control" name="search" placeholder="Search for todo ...">
                                                </form>
                                            </div>
                                            <div class="todo-add">
                                                <a href="#" class="btn btn-primary tip" title="Add new todo"><i class="icomoon-icon-plus mr0"></i></a>
                                            </div>
                                        </div>
                                        <h4 class="todo-period">Today</h4>
                                        <ul class="todo-list" id="today">
                                            <li class="todo-task-item">
                                                <div class="checkbox-custom">
                                                    <input type="checkbox" value="option1" id="checkbox1">
                                                    <label for="checkbox1"></label>
                                                </div>
                                                <div class="todo-priority normal tip" title="Normal priority">
                                                    <i class="icomoon-icon-radio-checked"></i>
                                                </div>
                                                <span class="todo-category label label-primary"> javascript </span>
                                                <div class="todo-task-text">Add scroll function to template</div>
                                                <button type="button" class="close todo-close">&times;</button>
                                            </li>
                                            <li class="todo-task-item">
                                                <div class="checkbox-custom">
                                                    <input type="checkbox" value="option2" id="checkbox2">
                                                    <label for="checkbox2"></label>
                                                </div>
                                                <div class="todo-priority high tip" title="High priority">
                                                    <i class="icomoon-icon-radio-checked"></i>
                                                </div>
                                                <span class="todo-category label label-default"> less </span>
                                                <div class="todo-task-text">Fix main less file</div>
                                                <button type="button" class="close todo-close">&times;</button>
                                            </li>
                                            <li class="todo-task-item task-done">
                                                <div class="checkbox-custom">
                                                    <input type="checkbox" value="option2" id="checkbox3" checked>
                                                    <label for="checkbox3"></label>
                                                </div>
                                                <div class="todo-priority high tip" title="High priority">
                                                    <i class="icomoon-icon-radio-checked"></i>
                                                </div>
                                                <span class="todo-category label label-danger"> html </span>
                                                <div class="todo-task-text">Change navigation structure</div>
                                                <button type="button" class="close todo-close">&times;</button>
                                            </li>
                                        </ul>
                                        <h4 class="todo-period">Tomorrow</h4>
                                        <ul class="todo-list" id="tomorrow">
                                            <li class="todo-task-item">
                                                <div class="checkbox-custom">
                                                    <input type="checkbox" value="option2" id="checkbox4">
                                                    <label for="checkbox4"></label>
                                                </div>
                                                <div class="todo-priority tip" title="Low priority">
                                                    <i class="icomoon-icon-radio-checked"></i>
                                                </div>
                                                <span class="todo-category label label-info"> css </span>
                                                <div class="todo-task-text">Create slide panel widget</div>
                                                <button type="button" class="close todo-close">&times;</button>
                                            </li>
                                            <li class="todo-task-item">
                                                <div class="checkbox-custom">
                                                    <input type="checkbox" value="option2" id="checkbox5">
                                                    <label for="checkbox5"></label>
                                                </div>
                                                <div class="todo-priority medium tip" title="Medium priority">
                                                    <i class="icomoon-icon-radio-checked"></i>
                                                </div>
                                                <span class="todo-category label label-warning"> php </span>
                                                <div class="todo-task-text">Edit the main controller</div>
                                                <button type="button" class="close todo-close">&times;</button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End .todo-widget -->
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-md-4 end here -->
                    </div>
                    <!-- / .row -->
                </div>
                <!-- End contentwrapper -->
            </div>
            <!-- End #content -->
            <?php $this->load->view('admin/inc/footer');?>
            <!-- End #footer  -->
        </div>
        <!-- / #wrapper -->
        <!-- Back to top -->
        <div id="back-to-top"><a href="#">Back to Top</a>
        </div>
        <!-- Javascripts -->
        <!-- Load pace first -->
        <script src="<?=base_url()?>adm/plugins/core/pace/pace.min.js"></script>
        <!-- Important javascript libs(put in all pages) -->
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script>
        window.jQuery || document.write('<script src="<?=base_url()?>adm/js/libs/jquery-2.1.1.min.js">\x3C/script>')
        </script>
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
        window.jQuery || document.write('<script src="<?=base_url()?>adm/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
        </script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script>
        window.jQuery || document.write('<script src="<?=base_url()?>adm/js/libs/jquery-migrate-1.2.1.min.js">\x3C/script>')
        </script>
        <!--[if lt IE 9]>
  <script type="text/javascript" src="<?=base_url()?>adm/js/libs/excanvas.min.js"></script>
  <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script type="text/javascript" src="<?=base_url()?>adm/js/libs/respond.min.js"></script>
<![endif]-->
        <!-- Bootstrap plugins -->
        <script src="<?=base_url()?>adm/js/bootstrap/bootstrap.js"></script>
        <!-- Core plugins ( not remove ) -->
        <script src="<?=base_url()?>adm/js/libs/modernizr.custom.js"></script>
        <!-- Handle responsive view functions -->
        <script src="<?=base_url()?>adm/js/jRespond.min.js"></script>
        <!-- Custom scroll for sidebars,tables and etc. -->
        <script src="<?=base_url()?>adm/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<?=base_url()?>adm/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
        <!-- Remove click delay in touch -->
        <script src="<?=base_url()?>adm/plugins/core/fastclick/fastclick.js"></script>
        <!-- Increase jquery animation speed -->
        <script src="<?=base_url()?>adm/plugins/core/velocity/jquery.velocity.min.js"></script>
        <!-- Quick search plugin (fast search for many widgets) -->
        <script src="<?=base_url()?>adm/plugins/core/quicksearch/jquery.quicksearch.js"></script>
        <!-- Bootbox fast bootstrap modals -->
        <script src="<?=base_url()?>adm/plugins/ui/bootbox/bootbox.js"></script>
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="<?=base_url()?>adm/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/knob/jquery.knob.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.custom.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.pie.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.resize.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.time.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.growraf.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.categories.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.stack.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.orderBars.js"></script>
        <script src="<?=base_url()?>adm/plugins/charts/flot/jquery.flot.tooltip.min.js"></script>
        <script src="<?=base_url()?>adm/plugins/ui/waypoint/waypoints.js"></script>
        <script src="<?=base_url()?>adm/plugins/forms/autosize/jquery.autosize.js"></script>
        <script src="<?=base_url()?>adm/js/jquery.supr.js"></script>
        <script src="<?=base_url()?>adm/js/main.js"></script>
        <script src="<?=base_url()?>adm/js/pages/dashboard.js"></script>
    </body>
</html>