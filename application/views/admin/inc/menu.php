<div class="menu">

                <div class="breadLine">            
                    <div class="arrow"></div>
                    <div class="adminControl active">
                        Hi, Artem
                    </div>
                </div>

                <div class="admin">
                    <div class="image">
                        <img src="<?=base_url()?>images/no-picture.gif" class="img-polaroid"/>                
                    </div>
                    <ul class="control">
                        <li><span class="icon-share-alt"></span> <a href="<?=base_url()?>admin/?action=logout">Logout</a></li>
                    </ul>
                    <div class="info">
                        <span>Welcom back!</span>
                    </div>
                </div>


                <ul class="navigation">            
                    <li class="active">
                        <a href="<?=base_url()?>admin">
                            <span class="isw-grid"></span><span class="text">Dashboard</span>
                        </a>
                    </li>

                    <li>
                        <a href="<?=base_url()?>admin/?pg=Users&p=admin">
                            <span class="isw-users"></span><span class="text">Users</span>
                        </a>
                    </li>


                    <li class="openable ">
                        <a href="#">
                            <span class="isw-settings"></span><span class="text">Permissions</span>
                        </a>
                        <ul>
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Roles&p=admin">
                                    <span class="icon-list"></span><span class="text">Roles</span>
                                </a>                  
                            </li>          
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Rights&p=admin">
                                    <span class="icon-list"></span><span class="text">Rights</span>
                                </a>                  
                            </li>                      
                        </ul>            
                    </li>


                    <li class="openable ">
                        <a href="#">
                            <span class="isw-list"></span><span class="text">Idioma</span>
                        </a>
                        <ul>
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=LanguageInfos&p=admin">
                                    <span class="icon-th"></span><span class="text">Idioma</span>
                                </a>                  
                            </li>          
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Languages&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Languages Words</span>
                                </a>                  
                            </li>                      
                        </ul>            
                    </li>


                    <li class="openable ">
                        <a href="#">
                            <span class="isw-graph"></span><span class="text">Logs</span>
                        </a>

                        <ul>
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Logs&p=admin">
                                    <span class="icon-tasks"></span><span class="text">Access Logs</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=LoginErrors&p=admin">
                                    <span class="icon-tasks"></span><span class="text">LoginErrors</span>
                                </a>
                            </li>
                        </ul>
                    </li>


                    <li class="">
                        <a href="<?=base_url()?>admin/?pg=BanList&p=admin">
                            <span class="isw-graph"></span><span class="text">BanList</span>
                        </a>
                    </li>


                    <li class="openable ">
                        <a href="#">
                            <span class="isw-settings"></span><span class="text">Settings</span>
                        </a>
                        <ul>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=mail">
                                    <span class="icon-tasks"></span><span class="text">Mail</span>
                                </a>                  
                            </li>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=phpini">
                                    <span class="icon-tasks"></span><span class="text">Server Configs</span>
                                </a>                  
                            </li>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=site">
                                    <span class="icon-tasks"></span><span class="text">Site Config</span>
                                </a>                  
                            </li>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=codebuilder">
                                    <span class="icon-tasks"></span><span class="text">CodeBuilder Config</span>
                                </a>                  
                            </li>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=caches">
                                    <span class="icon-tasks"></span><span class="text">Caches Config</span>
                                </a>                  
                            </li>
                            <li>
                                <a href="<?=base_url()?>admin/?pg=Settings&type=backups">
                                    <span class="icon-tasks"></span><span class="text">Backups Config</span>
                                </a>                  
                            </li>
                        </ul>
                    </li>    


                    <li class="">
                        <a href="<?=base_url()?>admin/?pg=Menu&p=admin">
                            <span class="isw-documents"></span><span class="text">Menus</span>
                        </a>                               
                    </li>


                    <li class="openable ">
                        <a href="#">
                            <span class="isw-documents"></span><span class="text">Menu Items</span>
                        </a>
                        <ul>

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MenuLinks&p=admin&menu_id=7">
                                    <span class="icon-th-large"></span><span class="text">Top Menu</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MenuLinks&p=admin&menu_id=2">
                                    <span class="icon-th-large"></span><span class="text">Admin Panel</span>
                                </a>                  
                            </li>       

                        </ul>
                    </li>    


                    <li class="openable active">
                        <a href="#">
                            <span class="isw-documents"></span><span class="text">Plugins</span>
                        </a>
                        <ul>

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=BottomBanners&p=admin">
                                    <span class="icon-th-large"></span><span class="text">BottomBanners</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Pages&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Pages</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Videos&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Videos</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=VideoCategories&p=admin">
                                    <span class="icon-th-large"></span><span class="text">VideoCategories</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Notification&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Notification</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MoviesTopBanners&p=admin">
                                    <span class="icon-th-large"></span><span class="text">MoviesTopBanners</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=AdvancedPlugins&p=admin">
                                    <span class="icon-th-large"></span><span class="text">AdvancedPlugins</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MoviesBoxOffice&p=admin">
                                    <span class="icon-th-large"></span><span class="text">MoviesBoxOffice</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MoviesLanguages&p=admin">
                                    <span class="icon-th-large"></span><span class="text">MoviesLanguages</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MoviesServers&p=admin">
                                    <span class="icon-th-large"></span><span class="text">MoviesServers</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=TopCinemaImage&p=admin">
                                    <span class="icon-th-large"></span><span class="text">TopCinemaImage</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Promos&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Promos</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Advertisement&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Advertisement</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=MoviesTypes&p=admin">
                                    <span class="icon-th-large"></span><span class="text">MoviesTypes</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=TrailerTypes&p=admin">
                                    <span class="icon-th-large"></span><span class="text">TrailerTypes</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Soundtracks&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Soundtracks</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Studios&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Studios</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Movies&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Movies</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Genres&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Genres</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=People&p=admin">
                                    <span class="icon-th-large"></span><span class="text">People</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=Positions&p=admin">
                                    <span class="icon-th-large"></span><span class="text">Positions</span>
                                </a>                  
                            </li>       

                            <li class="">
                                <a href="<?=base_url()?>admin/?pg=News&p=admin">
                                    <span class="icon-th-large"></span><span class="text">News</span>
                                </a>                  
                            </li>       

                        </ul>
                    </li>    


                </ul>

                <div class="dr"><span></span></div>

                <div class="widget-fluid">
                    <div id="menuDatepicker"></div>
                </div>

                <div class="dr"><span></span></div>

            </div>