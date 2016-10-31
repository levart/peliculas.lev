
        <div id="wrapper">
            <!-- #wrapper -->
            <?php 
                $this->load->view("admin/inc/sidebar");
                $this->load->view("admin/inc/right_sidebar");
            ?>

            <!--Body content-->
            <div id="content" class="page-content clearfix">
                <div class="contentwrapper">
                    <!--Content wrapper-->
                    <div class="heading">
                        <!--  .heading-->
                        <h3>Ajax table</h3>
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
                    <!-- Start .row -->
                    <div class="row">
                        <!-- col-lg-12 end here -->
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default plain toggle panelMove panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading">
                                    <a href="<?=base_url()?>admin/movies/add" class="btn btn-primary ml10 mt10 ">ფილმის დამატება</a>
                                </div>
                                <div class="panel-body">
                                    <table id="table-object" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Director</th>
                                                <th>btn</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Director</th>
                                                <th>btn</th>
                                            </tr>
                                        </tfoot>
                                    </table>
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
            <?php 
                $this->load->view("admin/inc/footer");
            ?>
        </div>
        <!-- / #wrapper -->