                        

                            <!-- start left content -->
                            <div class="left_content">

                                <!-- start recomendations -->
                                <div class="recomend">
                                    <h2>peliculas recomendadas</h2>



                                    <div class="rec-block">


                                  <?php foreach ($recomMovies as $movie): ?>
                                        
                                   

                                        <!-- recomendation item -->

                                        <div class="rec-item row">
                                            <div class="rec-img col-xs-5">
                                                <img src="<?=$movie->img?>" class="img-responsive">
                                            </div>
                                            <div class="rec-info col-xs-7">
                                                <h3><a href="#"> <?=$movie->name?></a></h3>
                                                <h4><a href="#"> Warrior</a></h4>

                                                <p>Género: <?=$this->movies_model->getMovieGenre($movie->genre_id)->name;?></p>
                                                <p>Box Office: $<?=$movie->box_office?></p>
                                                <p> Budget: $<?=$movie->budget?></p>
                                                <div class="stars">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /recomendation item -->

                                 <?php endforeach ?>
                                    </div>
                                </div>

                                <!-- end recomendations -->




                                <!-- start top movies -->

                                <div class="top-movies-main">

                                    <ul class='tabs'>
                                        <li><a href='#top1'>Day</a><span></span></li>
                                        <li><a href='#top2'>Week</a><span></span></li>
                                        <li><a href='#top3'>Month</a><span></span></li>
                                        <li><a href='#top4'>Top Total</a><span></span></li>
                                    </ul>
                                    <div id='top1' class="cont">

                                    <?php 
                                        $i=01;
                                    foreach ($daymovies as $post): ?>
                                       
                                      

                                        <!-- top item -->
                                        <div class="top_item row">
                                            <div class="top_num col-md-2 col-xs-2">
                                               <?=$i?>
                                            </div>
                                            <div class="top_cont col-md-8 col-xs-8">
                                                <h2><a href="#"> <?=$post->name?></a></h2>
                                                <h3><a href="#"><?=$post->name?></a></h3>
                                            </div>
                                            <div class="top_count col-md-2 col-xs-2">
                                                <span><?=$post->msum?></span>
                                            </div>
                                        </div>

                                        <!-- end top item -->

                                        
                                      <?php  

                                        $i++;
                                       endforeach ?>
                                        
                             
                                        

                                    </div>
                                    <div id='top2' class="cont">
                                        
                                    <?php 
                                        $i=01;
                                    foreach ($weekmovies as $post): ?>
                                       
                                      

                                        <!-- top item -->
                                        <div class="top_item row">
                                            <div class="top_num col-md-2 col-xs-2">
                                               <?=$i?>
                                            </div>
                                            <div class="top_cont col-md-8 col-xs-8">
                                                <h2><a href="#"> <?=$post->name?></a></h2>
                                                <h3><a href="#"><?=$post->name?></a></h3>
                                            </div>
                                            <div class="top_count col-md-2 col-xs-2">
                                                <span><?=$post->msum?></span>
                                            </div>
                                        </div>

                                        <!-- end top item -->

                                        
                                      <?php  

                                        $i++;
                                       endforeach ?>

                                    </div>
                                    <div id='top3' class="cont">
                                        
                                    <?php 
                                        $i=01;
                                    foreach ($monthmovies as $post): ?>
                                       
                                      

                                        <!-- top item -->
                                        <div class="top_item row">
                                            <div class="top_num col-md-2 col-xs-2">
                                               <?=$i?>
                                            </div>
                                            <div class="top_cont col-md-8 col-xs-8">
                                                <h2><a href="#"> <?=$post->name?></a></h2>
                                                <h3><a href="#"><?=$post->name?></a></h3>
                                            </div>
                                            <div class="top_count col-md-2 col-xs-2">
                                                <span><?=$post->msum?></span>
                                            </div>
                                        </div>

                                        <!-- end top item -->

                                        
                                      <?php  

                                        $i++;
                                       endforeach ?>

                                    </div>
                                    <div id='top4' class="cont">
                                        <?php 
                                        $i=01;
                                    foreach ($toptolalmovies as $post): ?>
                                       
                                      

                                        <!-- top item -->
                                        <div class="top_item row">
                                            <div class="top_num col-md-2 col-xs-2">
                                               <?=$i?>
                                            </div>
                                            <div class="top_cont col-md-8 col-xs-8">
                                                <h2><a href="#"> <?=$post->name?></a></h2>
                                                <h3><a href="#"><?=$post->name?></a></h3>
                                            </div>
                                            <div class="top_count col-md-2 col-xs-2">
                                                <span><?=$post->msum?></span>
                                            </div>
                                        </div>

                                        <!-- end top item -->

                                        
                                      <?php  

                                        $i++;
                                       endforeach ?>

                                    </div>

                                    <!-- end top movies -->


                                </div>


                                <!-- end item -->







                            </div>
                            <!-- end left content -->