<div id="contentor" class="contentor" style="opacity: 1; display: block;">




<script type="text/javascript"> setTimeout(function(){var a=document.createElement("script"); var b=document.getElementsByTagName("script")[0]; a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0046/9802.js?"+Math.floor(new Date().getTime()/3600000); a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1); 
</script>

<div class="isPages">



</div>


  <input type="hidden" name="movieid" id="movieid" value="1833">
  <input type="hidden" name="episodeid" id="episodeid" value="1">
  <input type="hidden" name="seasonid" id="seasonid" value="1">
  <input type="hidden" name="isepisode" id="isepisode" value="0">
  <input type="hidden" name="session" id="session" value="0">
  
   <div id="heightControll" class="movie" style="height: 665px;"></div>
 
  <div class="n-search-inner">
    <div class="n-search-cont">
      <div class="overover"></div>
            <div class="gk-switcher">
                <input id="kbd-switcher" type="checkbox">
                  <div class="gk-ka"></div>
                  <div class="gk-us"></div>
                  <input id="kbd-switcher" type="checkbox">
            </div>
              
                <div class="arrowUp"></div>
                      <input type="text" name="search" autocomplete="off" id="search" tabindex="1" placeholder="ძიება..." value="" class="search">
                      <input type="button" value="" name="go" id="go" class="go">
                      <div class="n-close-search" style="display:none;"></div>

                    <form action="" method="get" id="quick_srch"></form>   
                     <a href="/Search?Advanced" class="advanced-search-link" id="advanced-search-link">დეტალური <br> ძებნა</a>
                      <div id="search-result" class="search-result">
                  
                        <div id="search-result-inner" class="search-result-inner-new" style="text-align:center;"><iframe width="604" height="455" frameborder="0" scrolling="no" src="http://trgde.adocean.pl/_[TIMESTAMP]/ad.html?id=vB6mRYBP8rm.2hZWZtI7mSqOA6xriVJskNfpxRz3lWX.Z7/redir=" style="display: none !important;"></iframe></div>
                      </div>
                  
    </div>
  </div>  


 <div id="movie-wrapper" style="padding-top: 40px;">
    <div id="left-wrapper"></div>
      <div id="right-wrapper"></div>
      <div id="movie-container" style="background-image: url(&quot;<?=$single->cover?>&quot;); background-size: 2066px;"></div>
      <div id="playerContent" style=" background-image: url(&quot;<?=$single->cover?>&quot;);">
    <div id="themovieDiv" style="display:none;background: #000;position: absolute;width: 980px;height: 460px;z-index: 1;margin: 0px;padding: 0px;left: -1px;"><iframe id="themovieFrame" scrolling="no" style=" overflow:hidden;margin:0px;padding:0px;height:100%;width:100%;" allowfullscreen=""></iframe></div>      
       <div id="player" style="width: 980px;height:460px;display:block;">
                                
                                <center>
                                <div id="flashContent">
                                    
                                </div>
                                </center>
                             </div><!-- #player -->           <div class="play"></div>      </div>
    <div id="movie-info">
        <div id="left-info">
          <div class="cont">
            <h1 class="title"><?=$single->name?></h1><h2 class="originalTitle"><?=$single->name?></h2>              
              
          </div>
         </div>
         <div id="right-info">
            
     
              <div class="trailer"><div onclick="Adjaranet.openTrailersBoxOnMainPage(1833)">თრეილერი</div></div> 

              <div class="trailer news_subscribe " style="margin-right:5px;"><div onclick="subscribe(1833);">სიახლეების გამოწერა</div></div>    
     
              

              <a class="imdb" target="_blank" href="http://www.imdb.com/title/tt1055292"><?=$single->imdb?></a>     
                
              <div class="typeS">
                  <div data-href="http://85.117.37.153/fast24/1833/1833_Russian_300.mp4" class="active">RUS</div>
                  <div data-href="http://85.117.37.153/fast24/1833/1833_Georgian_300.mp4">GEO</div>
                  <div data-href="http://85.117.37.153/fast24/1833/1833_English_300.mp4">ENG</div>
              </div>

         </div>
      </div>
   </div>
   
   <div id="singleContent">

   
    <div id="movie-full-information">
        <div id="left-movie-block">
            <img src="<?=$single->img?>">

            <div id="download">
              <img src="http://staticnet.adjara.com/images/download.png">

              <span>გადმოწერა</span>

              <div class="type">
                <a target="_blank" href="http://net.adjara.com/download.php?mid=1833&amp;name=Life+as+We+Know+It_Georgian&amp;file=1833_Georgian_1500">GEO</a>
                <a target="_blank" href="http://net.adjara.com/download.php?mid=1833&amp;name=Life+as+We+Know+It_English&amp;file=1833_English_1500">ENG</a>
                <a target="_blank" href="http://net.adjara.com/download.php?mid=1833&amp;name=Life+as+We+Know+It_Russian&amp;file=1833_Russian_1500">RUS</a>
              </div>
            </div>
                      
            <div onclick="showReport()" id="report-button" data-id="1833">
                <img src="http://staticnet.adjara.com/images/report-button.png">
                პრობლემის შეტყობინება
            </div>
         </div>
         
         <div id="right-movie-block">


              <div class="movie-info-tabs">
                  <div class="film_info_box"> 
                      <div class="col-md-7">
                          <div class="row">
                            <div class="film_info_title col-md-3">Género:</div>
                            <div class="film_info_value col-md-8">
                               <?php 

                                    $genres = explode(',', $single->genre_id);
                                    foreach ($genres as $genre) {
                                        echo '<span id="genres-4750"><a href="movies/search/genres/39">'.$this->movies_model->getMovieGenre($genre)->name.',</a></span>';
                                    }
                                            
                                ?>
                            </div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Slogan:</div>
                            <div class="film_info_value col-md-8"><?=$single->slogan?></div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Year:</div>
                            <div class="film_info_value col-md-8"><?=$single->year?></div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Director:</div>
                            <div class="film_info_value col-md-8"><?=$this->movies_model->getMovieDirector($single->director_id)->name?></div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Productora:</div>
                            <div class="film_info_value col-md-8">Faliro House Productions</div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Actores:</div>
                            <div class="film_info_value col-md-8">
                              
                               <?php 
                                      $actors = explode(',', $single->actor_id);
                                      foreach ($actors as $actor) {
                                          echo '<span class="cast-link"><a href="movies/actor/id/548">'.$this->movies_model->getMovieActor($actor)->name.'</a>

                                  
                                          <span class="cast-thumb"><img data-src="images/actor.jpeg" alt="" src="'.$this->movies_model->getMovieActor($actor)->img.'"></span>

                                          
                                          </span>,';
                                      }
                                  ?>
                            </div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Box Office:</div>
                            <div class="film_info_value col-md-8"><?=$single->box_office?></div>
                          </div>
                      </div>
            
                      <div class="green_mile"></div>
                  </div>



                  <div class="mmm">
                      <div id="social">
                          social
                       </div>


                        <div class="innerButtons " movie-id="1833">
                      <?php 
                      if($this->users_model->chekIfIsInWlist($single->ID)){
                      ?>
                        <div class="add-watchlist selected" data-movie="<?=$single->ID?>">
                          <img class="watchlist" src="http://staticnet.adjara.com/images/checkedW.png"> ვაპირებ ყურებას
                        </div>  

                      <?php    
                        }else{
                      ?>
                        <div class="add-watchlist " data-movie="<?=$single->ID?>">
                          <img class="watchlist" src="http://staticnet.adjara.com/images/eyes.png"> ვაპირებ ყურებას
                        </div>  
                      <?php   
                      } 
                      ?>
                                                 

                      <div class="yourListBloack">
                            <div class="add-to-list"> 
                            <img class="cheKed" src="http://staticnet.adjara.com/images/add-to-list.png"> სიაში დამატება</div>
                              <div class="listItems">
                                  <ul id="chooseList">
                                    <?php

                                     foreach ($filmlists as $list):
                                      if($this->users_model->chekIfExists($single->ID, $list->ID)){ ?>

                <li class="listitem" data-id="<?=$list->ID?>" data-movie="<?=$single->ID?>"><span class="selected"></span>
                                    <?php
                                    }else{?>  
                <li class="listitem" data-id="<?=$list->ID?>" data-movie="<?=$single->ID?>"><span class=""></span>
                                  <?php  }
                                    ?>  

                                   

                                      

                                       <?=$list->name?></li>                  
                                    <?php endforeach ?>
                                  </ul>
                                  <div class="imtListAdd">
                                    <input type="text" placeholder="ახალი სიის დამატება...">
                                    <div data-movie="<?=$single->ID?>" class="addToList">+</div>
                                  </div>

                                  
                              </div>
                           </div>
                           
                     </div>
                  </div>


                  <div class="clear"></div>
            
            </div>
            

            <div class="movie-info-tabs">
                <h2 class="desc_title">Description</h2>
                <p> <?=$single->descrip?></p>

            </div>

        </div>
    
         <div class="clear"></div>





     <!--<div class="horizontal" style="margin-top:20px;"></div>-->
     <div class="horizontal" style="margin-top:20px;"></div>
                  <div id="movie-tab-slider">
          <ul class="tabs">
              <li><a href="#tabs-1" class="active">მსახიობები</a></li>
               <!--<li><a href="#tabs-2">მომენტები</a></li>-->
               <li><a href="#tabs-3">საუნდტრეკი</a></li>

                <li><a href="#tabs-6">მსგავსი ფილმები</a></li>
                              <!--<li><a href="#tabs-5">ატრიბუტიკა</a></li>-->
               <div class="clear"></div>
          </ul>

            <div id="tabs-1" style="display: block;">
              <div id="celebrity-slider">


           <?php 
                  $actors = explode(',', $single->actor_id);
                  foreach ($actors as $actor) {
                        echo  '<a class="items" href="'.base_url().'/movies/actor/'.$this->movies_model->getMovieActor($actor)->ID.'">
                                 <div class="opacity" style="opacity: 1;"><div class="celebrity-tumblr" style="opacity: 1; background-image: url('.$this->movies_model->getMovieActor($actor)->img.');"></div></div>
                                 <h3 class="name" style="color: rgb(150, 150, 150);">'.$this->movies_model->getMovieActor($actor)->name.'</h3>
                               </a>';

                     
                  }
              ?>

                    

              </div>
          </div>
           
        <div id="tabs-3" class="row" style="padding: 18px;">
                <div class="col-md-6">

                    <span class="soundClass" data-pl="14964" data-mp3="http://m.theost.com/31/63/31750cfd30.mp3">Amy Winehouse - You Know I\'m No Good</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14964"></span>
                    <span class="soundClass" data-pl="14965" data-mp3="http://m.theost.com/31/63/317514ed18.mp3">Beggars - You and Me</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14965"></span>
                    <span class="soundClass" data-pl="14966" data-mp3="http://m.theost.com/31/63/31752041d6.mp3">The Black Keys - Your Touch</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14966"></span>
                    <span class="soundClass" data-pl="14967" data-mp3="http://m.theost.com/31/63/31753cc4cd.mp3">Josh Kelley - Tidal Wave</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14967"></span>
                    <span class="soundClass" data-pl="14968" data-mp3="http://m.theost.com/31/63/3175462045.mp3">MoZella - Love Is Endless</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14968"></span>
                    <span class="soundClass" data-pl="14969" data-mp3="http://m.theost.com/31/63/31755c45b6.mp3">Free Energy - Something in Common</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14969"></span>
                    <span class="soundClass" data-pl="14970" data-mp3="http://m.theost.com/31/63/31756877a0.mp3">The Hotrats - Pump It Up</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14970"></span>
                </div>

                <div class="col-md-6">
                    <span class="soundClass" data-pl="14971" data-mp3="http://m.theost.com/31/63/31757fdbee.mp3">Ray LaMontagne - Three More Days</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14971"></span>
                    <span class="soundClass" data-pl="14972" data-mp3="http://m.theost.com/31/63/317587b8ea.mp3">Bruno Merz - For You Now</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14972"></span>
                    <span class="soundClass" data-pl="14973" data-mp3="http://m.theost.com/31/63/317593dbae.mp3">Roberta Flack - Hey  That\'s No Way to Say Goodbye</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14973"></span>
                    <span class="soundClass" data-pl="14974" data-mp3="http://m.theost.com/31/63/31760af157.mp3">Taken by Trees - Sweet Child O\' Mine</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14974"></span>
                    <span class="soundClass" data-pl="14975" data-mp3="http://m.theost.com/31/63/317611629c.mp3">Trina feat. Trick Daddy - Pull Over</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14975"></span>
                    <span class="soundClass" data-pl="14976" data-mp3="http://m.theost.com/31/63/317629e4c7.mp3">Pearl Jam - Just Breathe</span>
                    <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14976"></span>
                </div>

                <div style="float:left;width:450px;">
                  <span class="soundClass" data-pl="14977" data-mp3="http://m.theost.com/31/63/31763b3173.mp3">The Wiggles - Big Red Car</span>
                  <span style="display:none;top: -30px;position: relative;" class="objPl" id="pl14977"></span>
                </div>           
        </div>
            
        <div id="tabs-6" style="padding-top: 10px;">
         
        </div>
            
            <div class="clear"></div>
         </div>
         <div class="clear"></div>
        

   </div>
    </div>
  <div id="report-overlay"></div>
  <div class="formPopup report">
    <div style="display:none;" class="movieID">1833</div>
      <div style="display:none;" class="category">2</div>
      <div class="popUpTitle"><div class="title">პრობლემის შეტყობინება</div><div onclick="closePopUp()" class="closePopUp">X</div></div>
      <div class="fildsText"><textarea class="nomarg" placeholder="აღწერეთ პრობლემა"></textarea></div>
    <div class="fildsName"><input type="text" class="marg" placeholder="თქვენი ელ-ფოსტა"></div>
      <div class="fildsSend" onclick="reportPopUp()">შეტყობინების გაგზავნა</div>
   </div>




  <noscript>&lt;img src='//pa.tns-ua.com/ge/bug/pic.gif?siteid=net.adjara.com' alt=''/&gt;</noscript>




<a href="https://video.adjara.com/Competitions" target="_blank" class="adjaravideo-upload-and-win"><div></div></a>
</div>