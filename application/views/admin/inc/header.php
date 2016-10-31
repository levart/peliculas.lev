<div id="header">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<?=base_url()?>admin">
                HippoSS.<span class="slogan">ge</span>
            </a>
                </div>
                <div id="navbar-no-collapse" class="navbar-no-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <!--Sidebar collapse button-->
                            <a href="#" class="collapseBtn leftbar"><i class="s16 minia-icon-list-3"></i></a>
                        </li>
                         <li>
                            <a href="#" class="tipB reset-layout" title="Reset panel postions"><i class="s16 icomoon-icon-history"></i></a>
                        </li>
                    </ul>
                    <ul class="nav navbar-right usernav">
                        <li >
                            <a href="<?=base_url()?>" target="_blank">
                                <i class="s16 icomoon-icon-earth"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">
                                <i class="s16 icomoon-icon-user"></i>
                                <span class="txt"><?= $this->session->userdata('username') ?></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu right">
                                <li class="menu">
                                    <ul>
                                        <li><a href="<?= base_url() ?>admin/users/profile"><i class="s16 icomoon-icon-user-plus"></i>პროფილი</a>
                                        </li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="<?= base_url() ?>admin/home/logout"><i class="s16 icomoon-icon-exit"></i><span class="txt"> Logout</span></a>
                        </li>
                    </ul>
                </div>
                <!-- /.nav-collapse -->
            </nav>
            <!-- /navbar -->
        </div>