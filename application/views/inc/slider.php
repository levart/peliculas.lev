
                    <!-- slaideri -->
                    <div class="x-slider-controler"> <img id="x-slider-prev" src="<?=base_url()?>assets/images/x-slider-prev.png"> 
                        <img id="x-slider-next" src="<?=base_url()?>assets/images/x-slider-next.png"> </div>
                    <div id="heightControll"></div>
                    <div id="slider-wrapper">
                        <div id="slider-con" >

                            <div id="gradient1">
                                <div id="sliderController">

                                    <span class="act" data-key="0"></span>
                                   <?php 
                                   $i=0; 


                                        while($i<count($sliders)){
                                            echo ' <span class="act" data-key="'. $i.'"></span>';

                                            $i++;

                                        }
                                   ?>

                                   
                                </div>
                            </div>

                            <div id="gradient"> </div>

                            <div id="leftSlide" style="width: 153px;"></div>
                            <div id="rightSlide" style="width: 153px;"></div>


                    <?php 
                        
                        foreach ($sliders as $slider) {
                    ?>
              

                        <!-- Slider Item-->
                            <div class="slider-inner " style="background:url('<?=$slider->cover_img?>') no-repeat center top;">
                                <div class="slider-title" style="opacity: 1; text-align:left;"> 
                                    <span class="slider-link ajaxRequest" ><?=$slider->name?></span>
                                    <div class="slider-date">Insurgent          
                                        <div class="trailer light-borders" style="position: relative;"> 
                                            <span class="trailerClick trailer-btn notrailer" style="top: 3px !important; ">Trailer</span>
                                        </div>
                                    </div>
                                </div>
                                <span class="play ajaxRequest" href="movies/detail/id/235"></span> 
                            </div>
                        <!--And Slider Item-->

                    <?php
                            }
                    ?>


                        

                        </div>
                    </div>
                    <div class="n-search-cont">
                        <div class="overover"></div>
                        <div class="arrowUp"></div>
                        <input type="text" name="search" autocomplete="off" id="search" tabindex="1" placeholder="Buscar..." value="" class="search">
                        <input type="button" value="" name="go" id="go" class="go">
                        <div class="n-close-search" style="display:none;"></div>
                        <form action="" method="get" id="quick_srch">
                        </form>
                        <a href="#" class="advanced-search-link" id="advanced-search-link">დეტალური <br>
                            ძებნა</a>
                        <div id="search-result" class="search-result">
                            <div id="search-result-inner" class="search-result-inner-new"></div>
                        </div>
                    </div>