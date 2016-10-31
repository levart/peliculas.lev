
                    <div id="MainContent" style="padding-top: 5px;">
                        <div class="center_content">





<!-- top movies -->


    <?php $this->load->view('inc/topMoviesSlider');?>

<!--  end top movies-->

<!-- start left content -->
    <?php $this->load->view('inc/leftSideBar');?>
<!-- end left content -->


                            <!-- start right content -->

                            <div class="right_content">

                                <!-- movies -->
                                <div class="mv_center">
                                    <div class="mv_center_corner"></div>


 <?php foreach ($newMovies as $movies): ?>

                                   <div class="mv_movie_item_static  movie-element">
              
                <a href="<?=base_url()?>movies/view/<?=$movies->ID?>" class="mv_movie_item_cover ajaxRequest" style="background-image:url('<?=$movies->img?>')"> </a>
                <a class="mv_movie_item_title bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"><?=$movies->name?>  </a> 
                <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"> <?=$movies->name?> </a>

                <div class="mv_movies_listing_item_stats"> 
                    <span class="mv_movie_year left"> YEAR: <span><?=$movies->year?></span> </span> 
                    <span class="imdb-small right">IMDB: <?=$movies->imdb?></span> 
                </div>

           
              </div> 


<?php endforeach ?>


<div class="clear"></div>

                                    
                                   

                                </div>
                                <!-- end movies -->






<!--  onclick="changePage();"  -->

                                <div class="serials">
                                    <div class="ser_corner"></div>
                                    <div class="pagin">
                                        <a class="sld_ser back" data-off="0" data-type="top" data-func="back"></a>
                                        <a class="sld_ser next" data-off="5" data-type="top" data-func="next"></a>
                                    </div>

                                    <ul class='tabs'>
                                        <li><a  id="topS">TOP SERIALS</a><span></span></li>
                                        <li><a  id="newS">JUST ADDED SERIALS</a><span></span></li>
                                    </ul>

                                    <div style="clear:both;"></div>
                        <!-- tab1 top serials -->
                                    <div id='tab1' class="cont">
                                        <div class="serial_inner ajaxload " >

                                         <div class="ajaxslider">
   

                                            <div class="animated ">
                                        <?php foreach ($topSerial as $movies ): 
                                           
                                            ?>


                                                       <div class="mv_movie_item_static  movie-element">
              
                <a href="<?=base_url()?>movies/view/<?=$movies->ID?>" class="mv_movie_item_cover ajaxRequest" style="background-image:url('<?=$movies->img?>')"> </a>
                <a class="mv_movie_item_title bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"><?=$movies->name?>  </a> 
                <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="<?=base_url()?>movies/view/<?=$movies->ID?>"> <?=$movies->name?> </a>

                <div class="mv_movies_listing_item_stats"> 
                    <span class="mv_movie_year left"> YEAR: <span><?=$movies->year?></span> </span> 
                    <span class="imdb-small right">IMDB: <?=$movies->imdb?></span> 
                </div>

            
              </div> 
                                             

                                            <?php endforeach ?>
                                            </div></div>
                                            <div class="clear"></div>

                                           
                                        </div>

                                    </div>


                                    <!-- end top movies  slider tab 2-->


                                </div>





                                 <!-- start noticias -->
        <div class="news">

        <h3>Noticias</h3>
        <div class="news_inner">
                
 

                

                <?php 

                $i=0;

                foreach ($blogs as $blog):

                if ($i%3==0) {
                    echo '<div class="row">';
                }



                $stamp = strtotime($blog->date)
                ?>




             <!-- news item -->
                    <div class="news_item col-md-4">
                        
                <div class="news_top" >
                    <span><?=date("d",$stamp).'-'.date("m",$stamp).'-'.date("Y",$stamp) ;?></span>
                    <a class="news-item-title" href="<?=base_url()?>home/blogView/<?=$blog->ID?>"><?=$blog->name?></a>
                </div>
                
                <div class="icon_border_top_box_office" style="margin-right:4px; float:left;">
                    <a href="<?=base_url()?>home/blogView/<?=$blog->ID?>">
                        <img align="left" class="icon_top_box_office" src="<?=$blog->img?>">
                    </a>
                </div>
                
                <p class="news-item-text"><?=character_limiter(strip_tags($blog->text), 180);?></p>
            </div>
            <!-- end news item -->



                    
                <?php
                    if ($i%3==2) {
                       echo "</div>";
                    }
$i++;

                 endforeach ?>  
                </div>
             
        </div>




        <!--end  noticias -->






<!-- gray tabs  -->

        <div class="gray_tabs">
        <div class="gray_corner"></div>

        <div class="pagin">
          <a class="sld_gray back" data-off="0" data-type="top" data-func="back"></a>
          <a class="sld_gray next" data-off="5" data-type="top" data-func="next"></a>
      </div>

        <ul class='tabs'>
          <li><a id="trailers">Trailers</a><span></span></li>
          <li><a id="sTracks">Soundtracks</a><span></span></li>
          <li><a id="posTers">Posters</a><span></span></li>
          <li><a id="wPapers">Wallpapers</a><span></span></li>
          <li><a id="foTos">Fotos</a><span></span></li>
        </ul>

  <div style="clear:both;"></div>


  <div class="cont">
      <div class="gray_inner">
          

        </div>
  </div>

</div>

<!-- end gray tabs -->






<!-- start genero  -->
        <div class="genero">
        <h2>Genero</h2>
            <div class="inner_genero row">
                   

                <?php 

                    $i=0;
                   

                foreach ($genreAll as $genre):

                if ($i==0) {
                    echo ' <ul class="col-md-2 col-md-offset-1">';
                 }elseif ($i%5==0) {
                    echo '<ul class="col-md-2">';
                 } ?>



                    <li><a href="#"><?=$genre->name?></a></li>

                   
                <?php
                if ($i%5==4 || $i==count($genres)+1) {
                   echo "</ul>";
                }
                $i++;
                 endforeach ?>


    
                
            </div>
            
        </div>

<!-- end genero  -->


                            </div>
                            <div class="clear"></div>

                            <!-- end right content -->

                        </div>





                    </div>
                </div></div>
