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


<link rel="stylesheet" href="<?= base_url() ?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="<?=base_url()?>assets/css/owl.carousel.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/css/owl.theme.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/css/owl.transitions.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/addons.css" />
<link rel='stylesheet' href='<?= base_url() ?>assets/css/googleapis.css' type='text/css'>
<link rel="stylesheet" href="<?= base_url() ?>assets/css/jquery.jscrollpane.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/styleNew.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/stylee.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/movieNew.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/jquery-ui-1.11.4.custom/jquery-ui.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/mystylee.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/xfactor.css" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/cinema.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/css/movies.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/css/video_containers.css">
<link rel="stylesheet" href="<?= base_url() ?>assets/css/containers.css">
<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/topmovies.css?v97" />
<link rel="stylesheet" href="<?= base_url() ?>assets/css/jshowoff.css" type="text/css" />
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
                <div id="headCont"> <a href="http://peliculas.is/public/" class="ajaxRequest" id="logo"></a>
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
            <div class="contentor" id="contentor"> 
                <!--
                                            <div class="search-scroll">
                                                <div class="search-scroll-btn"></div>
                                            </div>-->
                <div class="home-page clearfix" id="home-page"> 
                    <!-- slaideri -->
                    <div class="x-slider-controler"> 
                        <img src="<?= base_url() ?>assets/images/x-slider-prev.png" id="x-slider-prev"> 
                        <img src="<?= base_url() ?>assets/images/x-slider-next.png" id="x-slider-next"> 
                    </div>
                    <div id="heightControll"></div>
                    <div id="slider-wrapper" style="display: block;">
                        <div style="width: 15664px; margin-left: -12576.5px;" id="slider-con">
                            <div id="gradient1">
                                <div id="sliderController"><span data-key="0" class=""></span><span data-key="1" class=""></span><span data-key="2" class=""></span><span data-key="3" class=""></span><span data-key="4" class=""></span><span data-key="5" class=""></span><span data-key="6" class=""></span><span data-key="7" class=""></span><span data-key="8" class="act"></span></div>
                            </div>
                            <div id="gradient"> </div>
                            <div style="width: 239.5px;" id="leftSlide"></div>
                            <div style="width: 239.5px;" id="rightSlide"></div>
                            <div style="background:url('/assets/images/slider1.jpg') no-repeat center top;" class="slider-inner ">
                                <div style="opacity: 1; text-align:left;" class="slider-title"> <span href="movies/detail/id/46" class="slider-link ajaxRequest">გადაშენება</span>
                                    <div class="slider-date">EXTINCTION          <div style="position: relative;" class="trailer light-borders"> <span trailer="" style="top: 3px !important; " class="trailerClick trailer-btn notrailer ">Trailer</span></div>
                                    </div>
                                </div>
                                <span href="movies/detail/id/46" class="play ajaxRequest"></span> </div>
                            <!--<div  class="slider-inner" style="background-image:url(http://static.adjaranet.com/images/banners/sliderBanner.jpg)">
                                                        <div class="slider-title" style="opacity: 1;">
                                                                <a class="slider-link" target="_blank" href="http://adjaranet.com/NewsRSS/bannerCounter.php?&goblank">არის დრამა და არის ორიგინალური ქართული დრამა</a>
                                                                <div class="slider-date"></div>
                                                        </div>
                                    <a class="play" target="_blank" href="http://adjaranet.com/NewsRSS/bannerCounter.php?&goblank"></a>
                                                </div>--> 

                            <!--<div class="slider-inner" style="background-image:url('http://static.adjaranet.com/moviecontent/16032/covers/1920x1080-16032.jpg')">
                                <div class="slider-title">
                                  <a class="slider-link" onclick="javascript:Adjaranet.openTrailersBoxOnMainPage(16032)" style="cursor:pointer">ბედნიერების ღმერთი</a>
                                  <div class="slider-date">God of Happiness</div>
                                </div>
                                    <a class="play" onclick="javascript:Adjaranet.openTrailersBoxOnMainPage(16032)" style="cursor:pointer" ></a>
                              </div>-->

                            <!--Slider item-->

                            <div style="background:url('/assets/images/slider2.jpg') no-repeat center top;" class="slider-inner">
                                <div style="opacity: 1; text-align:left;" class="slider-title"> <span href="movies/detail/id/235" class="slider-link ajaxRequest">La serie Divergente: Insurgente</span>
                                    <div class="slider-date">Insurgent          <div style="position: relative;" class="trailer light-borders"> <span trailer="" style="top: 3px !important; " class="trailerClick trailer-btn notrailer ">Trailer</span></div>
                                    </div>
                                </div>
                                <span href="movies/detail/id/235" class="play ajaxRequest"></span> </div>

                            <!--/Slider item-->
                            <!--Slider item-->

                            <div style="background:url('/assets/images/slider3.jpg') no-repeat center top;" class="slider-inner">
                                <div style="opacity: 1; text-align:left;" class="slider-title"> <span href="movies/detail/id/182" class="slider-link ajaxRequest">Mad Max: Furia en la carretera</span>
                                    <div class="slider-date">Mad Max: Fury Road          <div style="position: relative;" class="trailer "> <span trailer="&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/gqXEQ0nJ_OQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;" style="top: 3px !important; " class="trailerClick trailer-btn  ">Trailer</span></div>
                                    </div>
                                </div>
                                <span href="movies/detail/id/182" class="play ajaxRequest"></span> </div>

                            <!--/Slider item-->
                            
                        </div>
                    </div>
                    <div class="n-search-cont">
                        <div class="overover"></div>
                        <div class="arrowUp"></div>
                        <input type="text" class="search" value="" placeholder="Buscar..." tabindex="1" id="search" autocomplete="off" name="search">
                        <input type="button" class="go" id="go" name="go" value="">
                        <div style="display:none;" class="n-close-search"></div>
                        <form id="quick_srch" method="get" action="">
                        </form>
                        <a id="advanced-search-link" class="advanced-search-link" href="#">დეტალური <br>
                            ძებნა</a>
                        <div class="search-result" id="search-result">
                            <div class="search-result-inner-new" id="search-result-inner"></div>
                        </div>
                    </div>
                    
                    
                    <div  id="MainContent">


                        <div class="switcher-first-section">
                            <div class="switchers">
                                <div class="view-switcher"> <i style="cursor: pointer;" href="http://peliculas.is/public/index/index/view/grid" class="fa fa-th to-grid"></i> <i class="fa fa-th-list current-view"></i> </div>

                                <div class="top-movies-switcher"> <span>TOP Movies</span>

                                    <ul>

                                        <li data-type="daily" class="current-top-tab">Diario</li>

                                        <li data-type="monthly">Mensual</li>

                                        <li data-type="yearly">Anual</li>

                                    </ul>

                                </div>
                            </div>
                        </div>

                        <div style="top: 71px;" class="followScroll">
                            <div>

                                <script>
                            $("#date").slider();

                                </script> 
                                <div class="top8" id="genreSelector">
                                    <div id="search-results-sort"> <a style="cursor:pointer;" title="Rating" data-order="desc" class="categories-sort-btn" data-sort="categories"> categorias</a> <a style="cursor:pointer;display:none;" title="Rating" data-order="desc" class="categories-hide active" data-sort="categories"> categorias</a> <span class="sort-separator"></span> <a style="cursor:pointer;" title="Rating" data-order="desc" class="rating-sort-btn" data-sort="rating"> Rating</a> <a style="cursor:pointer;display:none;" title="Rating" data-order="desc" class="rating-hide active" data-sort="rating"> Rating</a> <span class="sort-separator"></span> <a style="cursor:pointer;" title="Language" data-order="desc" class="language-sort-btn" data-sort="language"> Language</a> <a style="cursor:pointer;display:none;" title="Language" data-order="desc" class="language-hide active" data-sort="language"> Language</a> <span class="sort-separator"></span> <a style="cursor:pointer;" title="Country" data-order="desc" class="country-sort-btn" data-sort="country"> País</a> <a style="cursor:pointer;display:none;" title="Country" data-order="desc" class="country-hide active" data-sort="country"> País</a> <span class="sort-separator"></span> <a style="cursor:pointer;" title="Date" data-order="desc" class="date-sort-btn" data-sort="date"> Date</a> <a style="cursor:pointer;display:none;" title="Date" data-order="desc" class="date-hide active" data-sort="date"> Date</a>
                                        <div class="date-sort clearfix">
                                            <input type="text" style="font-size:12px;border:0px; color:#818181;float:left;width: 80px; height:31px;margin-left:8px; margin-right:20px; margin-top:0px;font-family: sanSBold;" readonly="1900 - 2015" value="1900 - 2015" id="date">
                                            <div class="rangePo">
                                                <div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider-range"> <span style="left: 0%; background: #dadada !important;border-radius: 20px !important ;" tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all"></span> <span style="left: 100%; background: #dadada !important;border-radius: 20px !important ;" tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all"></span> <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="relative slider-con " style="display: block;">
                                    <div style="display: none;" class="categorias-fs">
                                        <div class="slider-pre"> <i class="fa fa-chevron-left"></i> </div>
                                        <div class="w900 mustScroll " id="genreSelector">
                                            <div s="" class="genres-slider clearfix" id="genres-slider">
                                                <div style="width: 2355px; height: 40px;" class="anythingSlider anythingSlider-tv activeSlider">
                                                    <form class="slider ui-buttonset" id="genresForm">
                                                        <div style="width: 100%; height: 100%;" class="anythingWindow">
                                                            <ul style="width: 100%; min-width: 2000px" class="genres-list">
                                                                <li class="">
                                                                    <input type="checkbox" id="check35" name="genre[]" value="35" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check35" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left" role="button" aria-pressed="false"><span class="ui-button-text">Crimen</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check25" name="genre[]" value="25" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check25" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Fantástico</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check39" name="genre[]" value="39" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check39" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Accion</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check27" name="genre[]" value="27" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check27" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Terror</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check43" name="genre[]" value="43" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check43" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Thriller</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check41" name="genre[]" value="41" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check41" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Animacion</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check31" name="genre[]" value="31" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check31" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Comedias</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check24" name="genre[]" value="24" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check24" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Drama</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check44" name="genre[]" value="44" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check44" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Romance</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check26" name="genre[]" value="26" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check26" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Guerra</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check30" name="genre[]" value="30" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check30" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Aventura</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check28" name="genre[]" value="28" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check28" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Intriga</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check29" name="genre[]" value="29" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check29" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Musica</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check32" name="genre[]" value="32" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check32" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Documental</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check33" name="genre[]" value="33" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check33" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Westerns</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check34" name="genre[]" value="34" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check34" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Familiar</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check36" name="genre[]" value="36" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check36" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Mystery</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check37" name="genre[]" value="37" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check37" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Deporte</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check38" name="genre[]" value="38" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check38" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Historica</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check40" name="genre[]" value="40" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check40" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Ciencia Ficción</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check42" name="genre[]" value="42" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check42" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Biografias</span></label>
                                                                </li>
                                                                <li class="">
                                                                    <input type="checkbox" id="check46" name="genre[]" value="46" class="toggle ui-helper-hidden-accessible">
                                                                    <label for="check46" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" role="button" aria-pressed="false"><span class="ui-button-text">Horror</span></label>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slider-nxt"> <i class="fa fa-chevron-right"></i> </div>
                                    </div>
                                </div>
                                <div class="search-results-header clearfix has-search-results page-header-opened" id="search-results-header">
                                    <div class="movie-genre-selector movie-genres-closed episodes-genre-selector" id="movie-genre-selector"> </div>
                                    <div class="search-results-sort-wrapper episodes-sorter page-header-opened" id="search-results-sort-wrapper">
                                        <div id="search-results-sort"> <span></span> <span class="sort-separator"></span>
                                            <div class="clear"></div>
                                            <div class="rating-sort clearfix" style="display: none;    margin-top: 10px;"> <a class="imdb" data-sort="imdb" href="javascript:void(0)"><i class="icon"></i>IMDB</a>
                                                <input type="text" style="border: 0px; color: rgb(129, 129, 129); float: left; width: 50px; margin-top: -1px; margin-left: 20px; display: none;    font-family: sanSBold !important;font-weight: normal !important;" readonly="" value="1-10" id="amount1">
                                                <div style="display: none;border:0px !important;" class="rangePo1 ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                    <div id="slider-range1" style="border: 1px solid #aaaaaa !important;" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%;background: #dadada !important;border-radius: 20px !important ;"></span> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 100%;background: #dadada !important;border-radius: 20px !important ;"></span> </div>
                                                    <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>
                                                <a class="tomatoes-critics" data-sort="tomatoes-critics" href="javascript:void(0)"><i class="icon"></i> Rotten Tomatoes: Critics</a>
                                                <input type="text" style="border: 0px ; color: rgb(129, 129, 129); float: left; width: 50px; margin-top: -1px; margin-left: 20px; display: none;    font-family: sanSBold !important;font-weight: normal !important;" readonly="" value="1-10" id="amount2">
                                                <div style="display:none;border:0px !important;" class="rangePo2 ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                    <div id="slider-range2" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%; background: #dadada !important;border-radius: 20px !important ;"></span> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 100%;background: #dadada !important;border-radius: 20px !important ;"></span> </div>
                                                    <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>
                                                <a class="tomatoes-auditory" data-sort="tomatoes-auditory" href="javascript:void(0)"><i class="icon"></i> Rotten Tomatoes: Audience</a>
                                                <input type="text" style="border: 0px ; color: rgb(129, 129, 129); float: left; width: 50px; margin-top: -1px; margin-left: 20px; display: none;    font-family: sanSBold !important;font-weight: normal !important;" value="1-10" readonly="" id="amount3">
                                                <div style="display:none;border:0px !important;" class="rangePo3 ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                    <div id="slider-range3" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%; background: #dadada !important;border-radius: 20px !important ;"></span> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 100%; background: #dadada !important;border-radius: 20px !important ;"></span> </div>
                                                    <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>
                                            </div>
                                            <div class="clear"></div>
                                            <div style="display:none; margin-top:10px;" class="lang">
                                                <div id="search-results-sort">
                                                    <form id="abcForm" class="ui-buttonset">
                                                        <!--                            <a  title="Latino" style="cursor:pointer;">Latino</a> -->
                                                        <input type="checkbox" id="lang_list6" value="6" class="toggle lang_list ui-helper-hidden-accessible">
                                                        <label style="float:left;" for="lang_list6" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left" role="button" aria-pressed="false"><span class="ui-button-text">Latino</span></label>
                                                        <span class="sort-separator"></span>
                                                        <!--                            <a  title="Castellano" style="cursor:pointer;">Castellano</a> -->
                                                        <input type="checkbox" id="lang_list7" value="7" class="toggle lang_list ui-helper-hidden-accessible">
                                                        <label style="float:left;" for="lang_list7" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Castellano</span></label>
                                                        <span class="sort-separator"></span>
                                                        <!--                            <a  title="Ingles" style="cursor:pointer;">Ingles</a> -->
                                                        <input type="checkbox" id="lang_list8" value="8" class="toggle lang_list ui-helper-hidden-accessible">
                                                        <label style="float:left;" for="lang_list8" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Ingles</span></label>
                                                        <span class="sort-separator"></span>
                                                        <!--                            <a  title="Subtitulado" style="cursor:pointer;">Subtitulado</a> -->
                                                        <input type="checkbox" id="lang_list9" value="9" class="toggle lang_list ui-helper-hidden-accessible">
                                                        <label style="float:left;" for="lang_list9" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Subtitulado</span></label>
                                                        <span class="sort-separator"></span>
                                                        <input type="checkbox" id="abc9" value="9" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abc9" role="button" aria-pressed="false"><span class="ui-button-text">0-9</span></label>
                                                        <input type="checkbox" id="abca" value="a" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abca" role="button" aria-pressed="false"><span class="ui-button-text">A</span></label>
                                                        <input type="checkbox" id="abcb" value="b" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcb" role="button" aria-pressed="false"><span class="ui-button-text">B</span></label>
                                                        <input type="checkbox" id="abcc" value="c" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcc" role="button" aria-pressed="false"><span class="ui-button-text">C</span></label>
                                                        <input type="checkbox" id="abcd" value="d" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcd" role="button" aria-pressed="false"><span class="ui-button-text">D</span></label>
                                                        <input type="checkbox" id="abce" value="e" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abce" role="button" aria-pressed="false"><span class="ui-button-text">E</span></label>
                                                        <input type="checkbox" id="abcf" value="f" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcf" role="button" aria-pressed="false"><span class="ui-button-text">F</span></label>
                                                        <input type="checkbox" id="abcg" value="g" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcg" role="button" aria-pressed="false"><span class="ui-button-text">G</span></label>
                                                        <input type="checkbox" id="abch" value="h" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abch" role="button" aria-pressed="false"><span class="ui-button-text">H</span></label>
                                                        <input type="checkbox" id="abci" value="i" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abci" role="button" aria-pressed="false"><span class="ui-button-text">I</span></label>
                                                        <input type="checkbox" id="abcj" value="j" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcj" role="button" aria-pressed="false"><span class="ui-button-text">J</span></label>
                                                        <input type="checkbox" id="abck" value="k" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abck" role="button" aria-pressed="false"><span class="ui-button-text">K</span></label>
                                                        <input type="checkbox" id="abcl" value="l" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcl" role="button" aria-pressed="false"><span class="ui-button-text">L</span></label>
                                                        <input type="checkbox" id="abcm" value="m" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcm" role="button" aria-pressed="false"><span class="ui-button-text">M</span></label>
                                                        <input type="checkbox" id="abcn" value="n" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcn" role="button" aria-pressed="false"><span class="ui-button-text">N</span></label>
                                                        <input type="checkbox" id="abco" value="o" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abco" role="button" aria-pressed="false"><span class="ui-button-text">O</span></label>
                                                        <input type="checkbox" id="abcp" value="p" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcp" role="button" aria-pressed="false"><span class="ui-button-text">P</span></label>
                                                        <input type="checkbox" id="abcq" value="q" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcq" role="button" aria-pressed="false"><span class="ui-button-text">Q</span></label>
                                                        <input type="checkbox" id="abcr" value="r" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcr" role="button" aria-pressed="false"><span class="ui-button-text">R</span></label>
                                                        <input type="checkbox" id="abcs" value="s" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcs" role="button" aria-pressed="false"><span class="ui-button-text">S</span></label>
                                                        <input type="checkbox" id="abct" value="t" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abct" role="button" aria-pressed="false"><span class="ui-button-text">T</span></label>
                                                        <input type="checkbox" id="abcu" value="u" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcu" role="button" aria-pressed="false"><span class="ui-button-text">U</span></label>
                                                        <input type="checkbox" id="abcv" value="v" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcv" role="button" aria-pressed="false"><span class="ui-button-text">V</span></label>
                                                        <input type="checkbox" id="abcw" value="w" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcw" role="button" aria-pressed="false"><span class="ui-button-text">W</span></label>
                                                        <input type="checkbox" id="abcx" value="x" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcx" role="button" aria-pressed="false"><span class="ui-button-text">X</span></label>
                                                        <input type="checkbox" id="abcy" value="y" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only" for="abcy" role="button" aria-pressed="false"><span class="ui-button-text">Y</span></label>
                                                        <input type="checkbox" id="abcz" value="z" class="toggle abc_checkbox ui-helper-hidden-accessible">
                                                        <label class="abc ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" for="abcz" role="button" aria-pressed="false"><span class="ui-button-text">Z</span></label>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                            <div style="display: block;" class="relative slider-con top10">
                                                <div style="display: none;" class="country-sort">
                                                    <div class="slider-pre"> <i class="fa fa-chevron-left"></i> </div>
                                                    <div class="w900 mustScroll " id="genreSelector">
                                                        <div s="" class="genres-slider clearfix" id="genres-slider">
                                                            <div style=" height: 40px;" class="anythingSlider anythingSlider-tv activeSlider">
                                                                <form id="countriesForm" class="ui-buttonset">
                                                                    <ul class="country-tabs sort-tabs Search">
                                                                        <li>
                                                                            <input type="checkbox" id="country10" name="country[]" value="10" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country10" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left" role="button" aria-pressed="false"><span class="ui-button-text">Alemania</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country21" name="country[]" value="21" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country21" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Argentina</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country16" name="country[]" value="16" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country16" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Canadá</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country23" name="country[]" value="23" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country23" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Chile</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country13" name="country[]" value="13" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country13" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">China</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country30" name="country[]" value="30" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country30" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Colombia</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country9" name="country[]" value="9" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country9" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">España</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country8" name="country[]" value="8" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country8" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Estados Unidos</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country17" name="country[]" value="17" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country17" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Francia</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country12" name="country[]" value="12" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country12" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Hong Kong</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country22" name="country[]" value="22" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country22" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Japón</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country24" name="country[]" value="24" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country24" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">México</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country11" name="country[]" value="11" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country11" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-pressed="false"><span class="ui-button-text">Reino Unido</span></label>
                                                                        </li>
                                                                        <li>
                                                                            <input type="checkbox" id="country20" name="country[]" value="20" class="toggle ui-helper-hidden-accessible">
                                                                            <label for="country20" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" role="button" aria-pressed="false"><span class="ui-button-text">Venezuela</span></label>
                                                                        </li>
                                                                    </ul>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="slider-nxt"> <i class="fa fa-chevron-right"></i> </div>
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div align="left" id="mdiv">
                            <div style="height: 39px;display: block;" id="sort-tags">
                                <div id="expand-arrow" class="showFilter"></div>
                            </div>
                        </div>

                        <div align="center" id="movies">

                            <?php $this->load->view('inc/topMoviesSlider');?>


                        </div>

                        <div class="row">
                            <div class="col-lg-3 home_left_contect">
                                <div class="rec-block">
                                    sdfdg
                                </div>
                            </div>
                            <div class="col-lg-9 home_right_contect">
                                <div class="rec-block">
                                    <div class="mv_movie_item_static  movie-element">
                                        <a href="http://allanimes.net/movies/view/198" class="mv_movie_item_cover ajaxRequest" style="background-image:url('http://allanimes.net/assets/images/mov2.jpg')"> </a>
                                        <a class="mv_movie_item_title bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198">name 5  </a> 
                                        <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198"> name 5 </a>
                                        <div class="mv_movies_listing_item_stats"> 
                                            <span class="mv_movie_year left"> YEAR: <span>2000</span> </span> 
                                            <span class="imdb-small right">IMDB: 0</span> 
                                        </div>
                                    </div>
                                    
                                    <div class="mv_movie_item_static  movie-element">
                                        <a href="http://allanimes.net/movies/view/198" class="mv_movie_item_cover ajaxRequest" style="background-image:url('http://allanimes.net/assets/images/mov2.jpg')"> </a>
                                        <a class="mv_movie_item_title bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198">name 5  </a> 
                                        <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198"> name 5 </a>
                                        <div class="mv_movies_listing_item_stats"> 
                                            <span class="mv_movie_year left"> YEAR: <span>2000</span> </span> 
                                            <span class="imdb-small right">IMDB: 0</span> 
                                        </div>
                                    </div>
                                    
                                    <div class="mv_movie_item_static  movie-element">
                                        <a href="http://allanimes.net/movies/view/198" class="mv_movie_item_cover ajaxRequest" style="background-image:url('http://allanimes.net/assets/images/mov2.jpg')"> </a>
                                        <a class="mv_movie_item_title bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198">name 5  </a> 
                                        <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198"> name 5 </a>
                                        <div class="mv_movies_listing_item_stats"> 
                                            <span class="mv_movie_year left"> YEAR: <span>2000</span> </span> 
                                            <span class="imdb-small right">IMDB: 0</span> 
                                        </div>
                                    </div>
                                    
                                    <div class="mv_movie_item_static  movie-element">
                                        <a href="http://allanimes.net/movies/view/198" class="mv_movie_item_cover ajaxRequest" style="background-image:url('http://allanimes.net/assets/images/mov2.jpg')"> </a>
                                        <a class="mv_movie_item_title bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198">name 5  </a> 
                                        <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198"> name 5 </a>
                                        <div class="mv_movies_listing_item_stats"> 
                                            <span class="mv_movie_year left"> YEAR: <span>2000</span> </span> 
                                            <span class="imdb-small right">IMDB: 0</span> 
                                        </div>
                                    </div>
                                    
                                    <div class="mv_movie_item_static  movie-element">
                                        <a href="http://allanimes.net/movies/view/198" class="mv_movie_item_cover ajaxRequest" style="background-image:url('http://allanimes.net/assets/images/mov2.jpg')"> </a>
                                        <a class="mv_movie_item_title bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198">name 5  </a> 
                                        <a class="mv_movie_item_title_eng bpgArial ajaxRequest" href="http://allanimes.net/movies/view/198"> name 5 </a>
                                        <div class="mv_movies_listing_item_stats"> 
                                            <span class="mv_movie_year left"> YEAR: <span>2000</span> </span> 
                                            <span class="imdb-small right">IMDB: 0</span> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div style="display:none;" class="playScript"> 

              </div>

                    </div>
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
<script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.jshowoff.js"></script>
<script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript" src="<?= base_url() ?>assets/js/jquery-migrate-1.2.1.min.js"></script>
<script data-require="angular.js@1.3.x" src="https://code.angularjs.org/1.3.15/angular.js" data-semver="1.3.15"></script>
    
        <script src="<?=base_url()?>assets/js/owl.carousel.min.js"></script>
        <script src="<?=base_url()?>app/app.js"></script>
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
    $(document).ready(function() {
        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: 'https://92.241.73.166:8081/LoyaltyCardService.svc/json/ChangeDeviceNumber',
            data: JSON.stringify(
                {
                    "type": "Trade",
                    "personalId": "01034001887",
                    "deviceNumber": "fDr9qHqXHx8:APA91bGvN3Frc2Dxoo8OGlyw194jeOnNmke-t85PKZivJslqKGX3gkVO1Ge8EgIjy4iqfKG3npwkSsT393HFRZwMRoVCtG8mLPfhfcp8h3ODsxdB2CMgeIVKfI9CUrqlicR1xnCJTk40",
                    "token": "fDr9qHqXHx8:APA91bGvN3Frc2Dxoo8OGlyw194jeOnNmke-t85PKZivJslqKGX3gkVO1Ge8EgIjy4iqfKG3npwkSsT393HFRZwMRoVCtG8mLPfhfcp8h3ODsxdB2CMgeIVKfI9CUrqlicR1xnCJTk40" 
                }
            ),
            dataType: "json",
            success: function (data) {
                alert(data);
            }
        });
    });
</script>
    </body>
</html>
