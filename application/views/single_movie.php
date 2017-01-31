<!DOCTYPE html>
<html lang="es" ng-app="plunker">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0">
        <title>
            მთავარი გვერდის დასახელება</title>
        <meta name="keywords" content="მთავარი,გვერდი" />
        <meta name="description" content="მთავარი გვერდი" />
        <meta property="og:site_name" content="www.peliculas.is" />
        <meta property="og:title" content="მთავარი გვერდის დასახელება">
        <meta property="og:type" content="website">           
        <meta property="og:url" content="http://peliculas.is/public/index/index/">
        <meta property="og:description" content="მთავარი გვერდი">
        <meta property="og:image" content="http://peliculas.is/public/images/logo.png">
        <meta property="og:image:type" content="image/jpg">
        <meta property="og:image:width" content="180">
        <meta property="og:image:height" content="102">
        <meta property="fb:app_id" content="385022118315699" />

        <link rel="stylesheet" href="<?= base_url() ?>build/css/style.bundle.css" />

    </head>
    <body ng-controller="MainCtrl">
        <div class="wrapper" name="wrapper" id="wrapper">
            <div class="overlay" id="overlay" style="display: none;">
                <div class="overlay-inner" id="overlay-inner"> 
                    <!--trailer-->
                    <div id="trailer-box">
                        <div id="trailer-box-inner">
                            <a title="close" class="sprite close-trailer-btn" href="#">X&nbsp;Close</a>
                            <div id="trailer-video">
                            </div>

                            <div id="trailers-switch-buttons"></div>
                            <div id="trailers-social"></div>
                        </div>
                    </div>
                    <!--/trailer-->

                    <div style="top: 500px; display: none;" class="formPopup report">
                        <div class="popUpTitle"><div class="title">problem report</div><div class="closePopUp" onclick="closePopUp()">X</div></div>
                        <div class="fildsText"><textarea placeholder=" problem description" id="report_problem_description" class="nomarg"></textarea></div>
                        <div class="fildsName"><input type="text" placeholder="Tu correo electrónico" id="report_email" class="marg"></div>
                        <div onclick="sendReport(report_email.value, report_problem_description.value);" class="fildsSend">Enviar mensaje</div>
                    </div>
                    <!--contact-->

                    <div style="height: 308px; display: none;" class="formPopup contact">
                        <div class="popUpTitle">
                            <div class="title">Contactos</div>
                            <div class="closePopUp" onclick="closePopUp()">X</div>
                        </div>
                        <div class="fildsSurname">
                            <input type="text" placeholder="Su nombre" name="name" class="margin">
                            <input type="text" placeholder="Tu correo electrónico" name="email">
                        </div>
                        <div class="fildsText">
                            <textarea placeholder="Mensaje" name="text"></textarea>
                        </div>
                        <img style="vertical-align: middle;margin-left: 20px;" src="http://peliculas.is/public/tools/captcha/w/110/h/30/ch/5/"> 
                        <input type="text" style="width: 219px;width: 105px;border: 1px solid #dcdcdc;height: 30px;border-radius: 3px;padding: 0 10px;" name="captcha" class="cpatcha">
                        <div class="fildsSend contact">Enviar mensaje</div>
                    </div>

                    <div style="width: 550px; height: auto; margin-left: -275px; padding-bottom: 20px; text-align: center; display: none;" class="formPopup imageMovierequests">
                        <div class="popUpTitle">
                            <div class="title"></div>
                            <div class="closePopUp" onclick="closePopUp()">X</div>
                        </div>
                    </div>
                    <!--/contact-->

                    <!--Password recovery-->
                    <div class="formPopup ForgotPassword" style="display: none;">
                        <div class="infoForgotPassword"></div>
                        <div class="popUpTitle">
                            <div class="title">Recuperación de contraseña</div>
                            <div class="closePopUp" onclick="closePopUp()">X</div>
                        </div>  

                        <div class="fildsSurname">
                            <form id="FormRecovery" method="post" action="">
                                <input type="text" placeholder="Tu correo electrónico" style="width:95%;" name="email">
                            </form>
                        </div>
                        <div class="success_recovery"></div>
                        <div class="success_recovery_ok"></div>
                        <div class="fildsSend contact">Recuperación de contraseña</div>
                    </div>
                    <!--/Password recovery-->

                    <!--        <div class="formPopup movierequest">
                            <div style="display:none;" class="category">2</div>
                            <div class="popUpTitle">
                                <div class="title">ვეძებ ფილმს</div>
                                <div onClick="closePopUp()" class="closePopUp">X</div>
                            </div>
                            <div class="fildsText">
                                <textarea class="nomarg" placeholder="თუ თქვენ ვერ იხსენებთ სასურველი ფილმის სახელწოდებას, აღწერეთ შინაარსი და ჩვენ მოგიძებნით"></textarea>
                            </div>
                            <div class="fildsName">
                                <input type="text" class="marg" placeholder="თქვენი ელ-ფოსტა" />
                            </div>
                            <div class="fildsSend" onClick="movieRequest()">შეტყობინების გაგზავნა</div>
                        </div>-->

                    <div class="formPopup wantMovie" style="top: 100px; display: none;">
                        <div id="authorizationContent">
                            <div onclick="closePopUp()" class="close-login">X</div>
                            <!--Login-->
                            <div id="loginDiv">
                                <div class="leftLogin">
                                    <div class="title">Iniciar sesión</div>
                                    <br>
                                    <div class="alternative-tip">If you are a registered arkhart register click on registration.</div>
                                    <div onclick="return(ForgotPassword())" class="linkForgotPassword">Recuperación de contraseña</div>
                                </div>
                                <div id="login-box-content">
                                    <div class="title">Autorización</div>
                                    <div class="desc">Please sign in to access your account</div>

                                    <div id="loginForNet">
                                        <form id="netLogin" method="post" action="">
                                            <p class="rel">
                                                <input type="text" placeholder="E-mail" id="username" name="username">
                                            </p>
                                            <p class="rel">
                                                <input type="password" placeholder="Contraseña" id="passwword" name="passwword">
                                            </p>
                                            <p class="clearfix rem">
                                                <input type="checkbox" id="remember-me" name="remember-me" class="custom-checkbox" checked="checked">
                                                <label for="remember-me"> Recuerde</label>
                                                <input type="hidden" value="login" name="op">
                                                <a id="login" style="font-size:8pt;" class="submit-btn-grey">Iniciar sesión</a>
                                            </p>
                                        </form>
                                    </div>

                                </div>
                                <div class="registrBtn">
                                    <div class="registrTab">Por favor regístrese</div>
                                </div>
                            </div>
                            <!--/Login-->

                            <!--Registration-->
                            <div id="registrDiv">
                                <div class="title">registro</div>
                                <div class="desc2">For registration please fill in the fields below</div>
                                <form id="registrationForm" method="post" action="">
                                    <p class="rel">
                                        <input type="text" class="form-control" placeholder="Nombre" id="username" name="username">

                                        <input type="password" placeholder="Contraseña" id="passwword" name="passwword">
                                    </p>
                                    <p class="rel">
                                        <input type="email" placeholder="E-mail" id="email" name="email">
                                    </p>
                                    <p class="rel"> 
                                        <span id="genderS">
                                            Género 
                                            <span class="female">
                                                Mujer                                    <input type="radio" value="2" name="gender" id="female">
                                            </span>
                                            <span class="male">
                                                Hombre                                    <input type="radio" checked="checked" value="1" name="gender" id="male">
                                            </span>
                                        </span> 
                                        <span id="birthday"> Fecha de nacimiento                                <select name="inputDay" id="inputDay" class="inputDay">
                                                <option value="">Día</option>
                                                <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>                                </select>
                                            <select name="inputMonth" id="inputMonth" class="inputMonth">
                                                <option value="">Mes</option>
                                                <option value="01">Enero</option>
                                                <option value="02">Febrero</option>
                                                <option value="03">March</option>
                                                <option value="04">Abril</option>
                                                <option value="05">Mayo</option>
                                                <option value="06">Junio</option>
                                                <option value="07">Julio</option>
                                                <option value="08">Agosto</option>
                                                <option value="09">Setiembre</option>
                                                <option value="10">Octubre</option>
                                                <option value="11">Noviembre</option>
                                                <option value="12">Diciembre</option>
                                            </select>
                                            <select name="inputYear" id="inputYear" class="inputYear">
                                                <option value="">Año</option>
                                                <option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option>                                </select>
                                        </span> 
                                    </p>
                                    <p class="rel"> 
                                        <span class="not"></span> 
                                        <span class="upAuth"></span> 
                                        <img src="http://peliculas.is/public//images/regLoader.gif" class="imagereg">
                                        <input type="submit" value="registro" id="registration" name="registration">
                                    </p>
                                </form>
                            </div>
                            <!--/Registration-->
                            <div class="success"></div>
                        </div>
                    </div>
                </div>
                <!--.overlay-inner--> 
            </div>
            <!--.overlay-->
            <!-- menu -->

            <div id="Headmenu">
                <div class="hr"></div>
                <div id="headCont"> <a href="/" class="ajaxRequest" id="logo"></a>
                    <div style="" class="workingLogo"></div>
                    <div id="manueBg">
                        <ul>
                            <li id="li-search"><a id="ico-search" class="navMovie ajaxRequest" href="http://peliculas.is/public/movies/filter"><span>Peliculas</span></a>
                                <ul style="display: none;">
                                    <li class="arrowUp"><span></span></li>
                                    <li><a genre="41" href="http://peliculas.is/public/movies/search/genres/41">Animation</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a genre="32" href="http://peliculas.is/public/movies/search/genres/32">Documentary</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/movies/search/withtrailer/1">Trailer</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a class="ajaxRequest" href="http://peliculas.is/public/collections/">Colecciones</a></li>
                                </ul>
                            </li>
                            <li id="li-episodes"><a id="ico-episodes" class="navEpisode ajaxRequest" href="http://peliculas.is/public/movies/serials"><span>Series</span></a>
                                <ul style="display: none;">
                                    <li class="arrowUp"><span></span></li>
                                    <li><a href="http://peliculas.is/public/movies/serials/lang/russian/" class="ajaxRequest">Russian</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/movies/serials/lang/turkish/" class="ajaxRequest">Turkish</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/movies/serials/type/mini/" class="ajaxRequest">Mini-series</a></li>
                                </ul>
                            </li>
                            <li id="li-videos"><a id="ico-videos" class="ajaxRequest navVideos" href="http://peliculas.is/public/videos"><span>Videos</span></a>
                                <ul style="display: none;">
                                    <li class="arrowUp"><span></span></li>
                                    <li><a href="http://peliculas.is/public/videos/bycategory/genres/10">ახალი ამბები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/9">ვიდეო გაკვეთილები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/8">ცხოველები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/7">კომპიუტერული თამაშები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/6">ავტო მოტო</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/5">რეკლამა</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/4">მუსიკა&nbsp;</a></li>            
                                </ul>
                            </li>
                            <li id="li-games"><a id="ico-games" class="navGames ajaxRequest" href="games"><span>Juegos</span></a>
                                <ul style="display: none;">
                                    <li class="arrowUp"><span></span></li>
                                    <li><a href="#">Sports</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">RPG</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Shooting</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Logic</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Adventure</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Combats</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Race</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Action</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Simulator</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Strategy</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="#">Flash Games</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                </ul>
                            </li>
                            <li id="li-kolga"><a style="width:60px" id="ico-kolga" class="navKolga ajaxRequest" href="http://peliculas.is/public/photogallery"><span id="kolga">Fotos</span></a></li>
                        </ul>
                    </div>
                    <div class="profile" id="profile">
                        <div onclick="return(showmovieWant())" style="display:block;" class="login" id="login"> <a href="#">Iniciar sesión</a></div>    </div>
                    <!-- .profile --> 

                </div>
            </div>
            <div id="contentor" class="contentor">
                <div id="home-page" class="home-page clearfix">
                    <div class="n-search-cont indexed" style="margin-top: 68px;">
                        <div class="overover"></div>
                        <div class="arrowUp"></div>
                        <input name="search" autocomplete="off" id="search" tabindex="1" placeholder="Buscar..." value="" class="search" type="text">
                        <input value="" name="go" id="go" class="go" type="button">
                        <div class="n-close-search" style="display: block;"><i class="fa fa-times closeSearch"></i></div>
                        <form action="" method="get" id="quick_srch">
                        </form>
                        <a href="#" class="advanced-search-link" id="advanced-search-link">დეტალური <br>
                            ძებნა</a>

                    </div>
                    
                    <div id="heightControll" class="movie"></div>
 
  


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
            
     
              <div class="trailer"><div onclick="Adjaranet.openTrailersBoxOnMainPage(1833)">Trailer</div></div> 

              <div class="trailer news_subscribe " style="margin-right:5px;"><div onclick="subscribe(1833);">Suscrito</div></div>    
     
              

              <a class="imdb" target="_blank" href="http://www.imdb.com/title/tt1055292"><?=$single->imdb?></a>     
                
              <div class="typeS">
                  <div data-href="http://85.117.37.153/fast24/1833/1833_Russian_300.mp4" class="active">RUS</div>
                  <div data-href="http://85.117.37.153/fast24/1833/1833_Georgian_300.mp4">GEO</div>
                  <div data-href="http://85.117.37.153/fast24/1833/1833_English_300.mp4">ENG</div>
              </div>

         </div>
      </div>
   </div>
   
   <div id="MainContent">

   
    <div id="movie-full-information" >
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
                            <div class="film_info_value col-md-8"><? //$this->movies_model->getMovieDirector($single->director_id)->name; ?></div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Productora:</div>
                            <div class="film_info_value col-md-8">Faliro House Productions</div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Actores:</div>
                            <div class="film_info_value col-md-8">
                              <span class="more">
                               <?php 
                                      foreach ($actors as $actor) {
                                          echo '<a href="movies/actor/id/548">'.$this->movies_model->getMovieActors($actor)->name.'</a> ';
                                      }
                                  ?>
                                  </span>
                            </div>
                          </div>

                          <div class="row">
                            <div class="film_info_title col-md-3">Box Office:</div>
                            <div class="film_info_value col-md-8"><?=$single->box_office?></div>
                          </div>
                      </div>
            
                      <div class="green_mile"></div>
                  </div>



                  


                  <div class="clear"></div>
            
            </div>
            

            <div class="movie-info-tabs none description-area">
                
                        <div class="innerButtons " movie-id="1833">
                      <?php 
                      if($this->users_model->chekIfIsInWlist($single->ID)){
                      ?>
                        <div class="add-watchlist selected" data-movie="<?=$single->ID?>">
                          <img class="watchlist" src="http://staticnet.adjara.com/images/checkedW.png"> watchlist
                        </div>  

                      <?php    
                        }else{
                      ?>
                        <div class="add-watchlist " data-movie="<?=$single->ID?>">
                          <img class="watchlist" src="http://staticnet.adjara.com/images/eyes.png"> watchlist
                        </div>  
                      <?php   
                      } 
                      ?>
                                                 

                      <div class="yourListBloack">
                            <div class="add-to-list"> 
                            <img class="cheKed" src="http://staticnet.adjara.com/images/add-to-list.png"> Add to list</div>
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
                  
                <div class="title">Descripción:</div>
                <p> <?=$single->descrip?></p>

            </div>

        </div>
    
         <div class="clear"></div>





     <!--<div class="horizontal" style="margin-top:20px;"></div>-->
     <div class="horizontal" style="margin-top:20px;"></div>
     <div id="movie-tab-slider">
         <ul>
      <li><a href="#tabs-1" class="myTabs active">Actores</a></li>
      <li><a href="#tabs-6" class="myTabs">Películas similares</a></li>
      <div class="clear"></div>
    </ul>

         <div id="tabs-1" class="tabcon" style="display: block;">
             <div id="celebrity-slider">


                 <?php
                 foreach ($actors as $actor) {
                     echo '<a class="items" href="' . base_url() . 'movies/actor/' . $this->movies_model->getMovieActors($actor)->ID . '">
                                 <div class="opacity" style="opacity: 1;"><div class="celebrity-tumblr" style="opacity: 1; background-image: url(' . $this->movies_model->getMovieActors($actor)->img . ');"></div></div>
                                 <h3 class="name" style="color: rgb(150, 150, 150);">' . $this->movies_model->getMovieActors($actor)->name . '</h3>
                               </a>';
                 }
                 ?>



             </div>
         </div>

         <div id="tabs-6" class="tabcon" style="padding-top: 10px; display: none;">
             <div class="col-md-12 single-slider">
                <div class="owl-topslider">
                    <data-owl-carousel  class="home-page-slides" data-options="{navigation: true, pagination: false, rewindNav : false,items : 6,navigationText: ['','']}">
                        <div owl-carousel-item="" ng-repeat="item in items" class="item">
                        </div>
                    </data-owl-carousel>
                </div>
             </div>
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
                </div>
            <div class="push" id="push"><!-- .wrapper -->
                <footer>
                    <div class="footer-inner clearfix" id="footer-inner">
                        <div class="footer-note" id="footer-note">
                            <p style="float: right;width:430px;"> 

                                <span style="margin-right: 20px;">&copy; 2015 Created by <a href="index.php"> Moovies</a></span> </p>
                        </div>
                        <!-- .footer-note -->
                        <div class="footer-navigation" id="footer-navigation">
                            <ul>
                                <li class="active"> <a class="ajaxRequest" href="index.php">Inico</a> </li>
                                <li> <a href="terms/useragreement" class="ajaxRequest">User Agreement</a> </li>
                                <li> <span onclick="showPopUpContactForm();">Contactos</span> </li>
                            </ul>
                        </div>
                    </div>
                    <!-- .footer-inner --> 
                </footer>
                <!-- #footer --> </div>
        </div>

        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery-1.11.3.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.jshowoff.js"></script>
        <script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script type="text/javascript" src='https://www.google.com/recaptcha/api.js'></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script data-require="angular.js@1.3.x" src="https://code.angularjs.org/1.3.15/angular.js" data-semver="1.3.15"></script>

        <script src="<?= base_url() ?>assets/js/owl.carousel.min.js"></script>
        <script src="<?= base_url() ?>app/similar.js"></script>
        <script type="text/javascript" src="http://p.jwpcdn.com/6/10/jwplayer.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.touchSwipe.min.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.jcarousel.min.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jcarousel.responsive.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/moderniz.js" ></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/newsystem.js" ></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/custom.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/main.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/addons.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/skripti/movies.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.form.min.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/swfobject.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/users.js"></script>



        <script type="text/javascript" src="<?= base_url() ?>assets/js/search.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/login.js"></script>

        <script>
                                            $(document).ready(function () {
                                                // Configure/customize these variables.
    var showChar = 100;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Show more";
    var lesstext = "Show less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
                                                $("#topS").on("click", function () {

                                                    var th = $(this);
                                                    var func = th.data('func');
                                                    var off = th.data('off');
                                                    var type = th.data('type');
                                                    $(this).addClass("active");
                                                    $("#newS").removeClass("active");
                                                    $('#slidercontent').html('top');
                                                    //        $.get("/movies/ajaxSlider/0/5/top", function(data){
                                                    //          $(".sld_ser.next").data('type', "top");
                                                    //          $(".sld_ser.back").data('type', "top");
                                                    //          $(".sld_ser.next").data('off',5);
                                                    //          $(".sld_ser.back").data('off',0);
                                                    //          $('.ajaxload').html(data);
                                                    //        });

                                                });

                                                $("#newS").on("click", function () {


                                                    var th = $(this);
                                                    var func = th.data('func');
                                                    var off = th.data('off');
                                                    var type = th.data('type');
                                                    $(this).addClass("active");
                                                    $("#topS").removeClass("active");
                                                    $('#slidercontent').html('news');
                                                    //          $.get("/movies/ajaxSlider/0/5/new", function(data){
                                                    //            $(".sld_ser.next").data('type', "new");
                                                    //            $(".sld_ser.back").data('type', "new");
                                                    //            $(".sld_ser.next").data('off',5);
                                                    //            $(".sld_ser.back").data('off',0);
                                                    //
                                                    //            $('.ajaxload').html(data);
                                                    //          });

                                                });
                                            });
        </script>

    </body>
</html>
