<div id="MainContent" style="margin-top:60px;">
	<div id="watchlist-page-inner" class="watch-later" data-atr="1">
		<div id="watchlist-page-header" class="clearfix">
	        <h2>wishlist</h2>
	        <span>total: <span class="CountAllList"><?=count($wishlist)?></span></span> 
    	</div>


    		
    	



    	<div id="movies">   
			<div id="lists" data-atr="1">


    	<?php foreach ($wishlist as $movies ):
 
    	 ?>

		<div class="movie-element movie-element-size-1 " style="margin-top:30px;">
              
                <a href="<?=base_url()?>movies/view/<?=$movies->ID?>" class="zoomOnHover" style="background-image:url('<?=$movies->img?>')"> </a>
               <!--  <a class="mv_movie_item_title bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"><?=$movies->name?>  </a> 
                <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"> <?=$movies->name?> </a>
 -->
              <!--   <div class="mv_movies_listing_item_stats"> 
                    <span class="mv_movie_year left"> YEAR: <span><?=$movies->year?></span> </span> 
                    <span class="imdb-small right">IMDB: <?=$movies->imdb?></span> 
                </div> -->

            <div class="preview-block">

              <div class="inner">

                <div class="title">

                  <div class="imdb-votes"><em class="caption">ხმა:</em><em class="votes">155199</em></div>

                  <a target="_blank" href="http://www.imdb.com/title/tt2126355/">

                  <div class="imdb"><span>6.2</span></div>

                  </a><!-- .imdb -->

                  <h2> <?=$movies->name?> </h2>

                  <h3>  <?=$movies->name?> </h3>

                  <!-- <h3> Additional Text </h3> -->

                  <div class="duration"><?=$movies->durat?></div>

                </div>

                <!-- .title -->

                <div class="details">

                  <p><span>release date:</span> <a href="movies/search/year/2015_2015"> <?=$movies->year?></a></p>

                  <p><span>country:</span>

                    
                    <span id="genres-4750"><a>Estados Unidos</a></span>,
                    
                    <span id="genres-4750"><a>Canadá</a></span>
                    
                  </p>

                <!-- genre -->

                <p><span>genre:</span>
                    <?php 

                        $genres = explode(',', $movies->genre_id);
                        foreach ($genres as $genre) {
                            echo '<span id="genres-4750"><a href="movies/search/genres/39">'.$this->movies_model->getMovieGenre($genre)->name.',</a></span>';
                        }
                                
                    ?>
                </p>


                <p><span>director:</span>

                    
                    <span class="cast-link"> <a><?=$this->movies_model->getMovieDirector($movies->director_id)->name?></a> </span> 
                    
                </p>

                  <p> <span>Stars:</span>

                     <?php 
                        $actors = explode(',', $movies->actor_id);
                        foreach ($actors as $actor) {
                            echo '<span class="cast-link"><a href="movies/actor/id/548">'.$this->movies_model->getMovieActor($actor)->name.'</a>

                    
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
                        <?=$movies->descrip?>
                  </p>

                </div>

                <!-- .description -->
<!-- 
                <div style="position: absolute;bottom: 0;"> <span class="trailerClick trailer-btn  " trailer="<iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/jFFJIGbPntU&quot; frameborder=&quot;0&quot; allowfullscreen></iframe>">trailer</span> </div>
 -->
                <div class="add-to-watchlist watchlist-btn" movie-id="79"> <a style="cursor:pointer;">

                  watchlist
                  </a></div>

                <div class="views">Views: <span><?=$movies->view?></span></div>

                <!-- .views -->

                <div class="posterOverlay" style="    width: 188px;   height: 277px;   position: absolute; left:0; top: -10px; z-index: 5; margin-left:-199px;">

                <a href="<?=base_url()?>movies/view/<?=$movies->ID?>" class="ajaxRequest">

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


			</div>
		</div>
			
			

	</div>		
</div>