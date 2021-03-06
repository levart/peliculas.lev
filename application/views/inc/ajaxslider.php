 <div class="ajaxslider">
   

 <div class="animated ">
   

 <?php foreach ($movies as $movie ): 
                                           
                                            ?>


                                                       <div class="mv_movie_item_static  movie-element">
              
                <a href="<?=base_url()?>movies/view/<?=$movie->ID?>" class="mv_movie_item_cover ajaxRequest" style="background-image:url('<?=$movie->img?>')"> </a>
                <a class="mv_movie_item_title bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movie->ID?>"><?=$movie->name?>  </a> 
                <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movie->ID?>"> <?=$movie->name?> </a>

                <div class="mv_movies_listing_item_stats"> 
                    <span class="mv_movie_year left"> YEAR: <span><?=$movie->year?></span> </span> 
                    <span class="imdb-small right">IMDB: <?=$movie->imdb?></span> 
                </div>

            <div class="preview-block">

              <div class="inner">

                <div class="title">

                  <div class="imdb-votes"><em class="caption">ხმა:</em><em class="votes">155199</em></div>

                  <a target="_blank" href="http://www.imdb.com/title/tt2126355/">

                  <div class="imdb"><span>6.2</span></div>

                  </a><!-- .imdb -->

                  <h2> <?=$movie->name?> </h2>

                  <h3>  <?=$movie->name?> </h3>

                  <!-- <h3> Additional Text </h3> -->

                  <div class="duration"><?=$movie->durat?></div>

                </div>

                <!-- .title -->

                <div class="details">

                  <p><span>release date:</span> <a href="movie/search/year/2015_2015"> <?=$movie->year?></a></p>

                  <p><span>country:</span>

                    
                    <span id="genres-4750"><a>Estados Unidos</a></span>,
                    
                    <span id="genres-4750"><a>Canadá</a></span>
                    
                  </p>

                <!-- genre -->

                <p><span>genre:</span>
                    <?php 

                        $genres = explode(',', $movie->genre_id);
                        foreach ($genres as $genre) {
                            echo '<span id="genres-4750"><a href="movie/search/genres/39">'.$this->movies_model->getMovieGenre($genre)->name.',</a></span>';
                        }
                                
                    ?>
                </p>


                <p><span>director:</span>

                    
                    <span class="cast-link"> <a><?=$this->movies_model->getMovieDirector($movie->director_id)->name?></a> </span> 
                    
                </p>

                  <p> <span>Stars:</span>

                     <?php 
                        $actors = explode(',', $movie->actor_id);
                        foreach ($actors as $actor) {
                            echo '<span class="cast-link"><a href="movie/actor/id/548">'.$this->movies_model->getMovieActor($actor)->name.'</a>

                    
                            <span class="cast-thumb"><img data-src="images/actor.jpeg" alt="" src="'.$this->movies_model->getMovieActor($actor)->img.'"></span>

                            
                            </span>,';
                        }
                    ?>
                  </p>

                </div>

                <!-- .details -->

                <div class="description">
                    <div class="desc-title">Description:</div>

                  <br clear="all">

                  <p>
                        <?=$movie->descrip?>
                  </p>

                </div>

                <!-- .description -->
<!-- 
                <div style="position: absolute;bottom: 0;"> <span class="trailerClick trailer-btn  " trailer="<iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/jFFJIGbPntU&quot; frameborder=&quot;0&quot; allowfullscreen></iframe>">trailer</span> </div>
 -->
                <div class="add-to-watchlist watchlist-btn" movie-id="79"> <a style="cursor:pointer;">

                  watchlist
                  </a></div>

                <div class="views">Views: <span><?=$movie->view?></span></div>

                <!-- .views -->

                <div class="posterOverlay" style="    width: 130px;   height: 190px;  position: absolute;  top: -8px; z-index: 5;">

                <a href="<?=base_url()?>movies/view/<?=$movie->ID?>" class="ajaxRequest">

                  <div class="play"></div>

                  </a>

                  <div class="posterLangs">

                    <a class="posterLang">LAT</a><a class="posterLang inactive">CAS</a><a class="posterLang inactive">VOS</a>
                  </div>

                </div>

              </div>

              <!-- .inner -->
              </div>
              </div> 
                                             

                                            <?php endforeach ?>
                                            <div class="clear"></div>
 </div>
  </div>
 