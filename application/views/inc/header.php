        <div id="wrapper" class="wrapper">
            <div id="overlay" class="overlay">
                <div id="overlay-inner" class="overlay-inner"> 
                    <!--trailer-->
                    <div id="trailer-box">
                        <div id="trailer-box-inner">
                            <a href="#" class="sprite close-trailer-btn" title="close">X Close</a>
                            <div id="trailer-video">
                            </div>

                            <div id="trailers-switch-buttons"></div>
                            <div id="trailers-social"></div>
                        </div>
                    </div>
                    <!--/trailer-->



                     <?php if ($this->session->userdata('id')) {?>
                <!--Password recovery-->
                <div class="formPopup changePassword">
                    <div class="infoForgotPassword"></div>
                    <div class="popUpTitle">
                        <div class="title">Recuperación de contraseña</div>
                        <div onClick="closePopUp()" class="closePopUp">X</div>
                    </div>  

                    <div class="fildsSurname">
                        <form action="<?=base_url()?>users/passwordchange" method="post" id="PassChange">
                            <input name="password" id="password" placeholder="Clave" style="width:200px !important;" type="password">
                            </hr>
                            <input name="new-password" id="new-password" placeholder="Nueva contraseña" style="width:200px !important;" type="password">
                            </hr>
                            <input name="re-passwword" id="re-passwword" placeholder="Repeat Password" style="width:200px !important;" type="password">
                        </form>
                    </div>
                    <div class="success_recovery"></div>
                    <div class="success_recovery_ok"></div>
                    <div class="fildsSend contact" id="changePassword">Recuperación de contraseña</div>
                </div>




                <!--Password recovery-->
                <div class="formPopup profileEdit">
                    <div class="infoForgotPassword"></div>
                    <div class="popUpTitle">
                        <div class="title">Recuperación de contraseña</div>
                        <div onClick="closePopUp()" class="closePopUp">X</div>
                    </div>  

                    <div class="editProfile">
                        <form action="<?=base_url()?>users/profileEdit" method="post" id="profileEdit" style="overflow:hidden">


                        <div>
                            <input id="email" name="email" value="<?=$account->email?>"  readonly="" type="email">
                        </div>


                        <div class="gen">
                                <div>
                                Género:
                                </div> 
                                <div>
                                    <label for="female">Mujer</label>
                                    <?php
                                    if ($account->gender=="F") {
                                    	echo '<input checked="checked" id="female" name="gender" value="F" type="radio">';
                                    }else{
                                    	echo '<input id="female" name="gender" value="M" type="radio">';
                                    }

                                    ?>
                                    
                                </div> 
                                <div>
                                    <label for="male">Hombre</label>
 									<?php
                                    if ($account->gender=="M") {
                                    	echo ' <input checked="checked" id="male" name="gender" value="1" type="radio">';
                                    }else{
                                    	echo ' <input id="male" name="gender" value="1" type="radio">';
                                    }

                                    ?>


                                   
                                </div> 
                                <div class="clear"></div>
                        </div>
                        
                            

                    <div id="birthday">
                            <div>
                                 Gen. Date     
                            </div> 
                                                      
                            <div>
                                <select class="inputDay" id="inputDay" name="inputDay">
                                <option>Día</option>
                                <?php
                                	for ($i=01; $i < 31; $i++) { 
                                		if ($i ==date("d", strtotime($account->birth)) ) {
                                			$selected = 'selected="selected"';
                                		}else{
                                			$selected = '';
                                		}
                                		echo ' <option value="'.$i.'" '.$selected.'>'.$i.'</option>';
                                	}
                                ?>
                            </select>
                            </div>
                            

                            <div>
                            <select class="inputMonth" id="inputMonth" name="inputMonth">
                                <option>Mensual</option>
                                <?php
                                foreach ($months as $key => $value) {
                                    if ($key ==date("m", strtotime($account->birth)) ) {
                                            $selected = 'selected="selected"';
                                        }else{
                                            $selected = '';
                                        }
                                  echo '<option value="'.$key.'" '.$selected.'>'.$value.'</option>';
                                }
                                ?>
                                                       
                            </select>
                            </div>

                            <div>
                                <select class="inputYear" id="inputYear" name="inputYear">
                                <option value="">Año</option>
                                <?php
                                	for ($i=2016; $i > 1906; $i--) { 
                                		if ($i ==date("Y", strtotime($account->birth)) ) {
                                			$selected = 'selected="selected"';
                                		}else{
                                			$selected = '';
                                		}
                                		echo ' <option value="'.$i.'" '.$selected.'>'.$i.'</option>';
                                	}
                                ?>
                           
                 </select>
            </div>
                           
         
                            </div>

                        



					<div class="clear"></div>
                            
                        </form>
                    </div>
                    <div class="success_recovery"></div>
                    <div class="success_recovery_ok"></div>
                    <div class="fildsSend contact" id="editProfile">Recuperación de contraseña</div>
                </div>

                     <?php }?>

                    <div class="formPopup report" style="top: 500px; ">
                        <div class="popUpTitle"><div class="title">problem report</div><div onclick="closePopUp()" class="closePopUp">X</div></div>
                        <div class="fildsText"><textarea class="nomarg" id="report_problem_description" placeholder=" problem description"></textarea></div>
                        <div class="fildsName"><input type="text" class="marg" id="report_email" placeholder="Tu correo electrónico"></div>
                        <div class="fildsSend" onclick="sendReport(report_email.value, report_problem_description.value);">Enviar mensaje</div>
                    </div>



                    <!--contact-->
                    <div class="formPopup contact" style="height: 308px;">
                        <div class="popUpTitle">
                            <div class="title">Contactos</div>
                            <div onClick="closePopUp()" class="closePopUp">X</div>
                        </div>
                        <div class="fildsSurname">
                            <input class="margin" name="name" type="text" placeholder="Su nombre" />
                            <input name="email" type="email" placeholder="Tu correo electrónico" />
                        </div>
                        <div class="fildsText">
                            <textarea name="text" placeholder="Mensaje"></textarea>
                        </div>
                        <img src="http://peliculas.is/public/tools/captcha/w/110/h/30/ch/5/" style="vertical-align: middle;margin-left: 20px;" /> 
                        <input type="text" class="cpatcha" name="captcha" style="width: 219px;width: 105px;border: 1px solid #dcdcdc;height: 30px;border-radius: 3px;padding: 0 10px;" />
                        <div class="fildsSend contact" >Enviar mensaje</div>
                    </div>

                    <div class="formPopup imageMovierequests" style="width:550px;height:auto;margin-left:-275px;padding-bottom:20px;text-align: center;">
                        <div class="popUpTitle">
                            <div class="title"></div>
                            <div onClick="closePopUp()" class="closePopUp">X</div>
                        </div>
                    </div>
                    <!--/contact-->



                    <!--Password recovery-->
                    <div class="formPopup ForgotPassword">
                        <div class="infoForgotPassword"></div>
                        <div class="popUpTitle">
                            <div class="title">Recuperación de contraseña</div>
                            <div onClick="closePopUp()" class="closePopUp">X</div>
                        </div>  

                        <div class="fildsSurname">
                            <form action="<?=base_url()?>users/rememberPass" method="post" id="PassRecovery">
                                <input name="email" style="width:95%;" type="email" placeholder="Tu correo electrónico" />
                            </form>
                        </div>
                        <div class="success_recovery"></div>
                        <div class="success_recovery_ok"></div>
                        <div class="fildsSend contact" id="recoveryPass">Recuperación de contraseña</div>
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


                    <div class="formPopup wantMovie">
                        <div id="authorizationContent" >
                            <div class="close-login" onclick="closePopUp()">X</div>
                            <!--Login-->
                            <div id="loginDiv">
                                <div class="leftLogin">
                                    <div class="title">Iniciar sesión</div>
                                    <br />
                                    <div class="alternative-tip">If you are a registered arkhart register click on registration.</div>
                                    <div class="linkForgotPassword" onclick="return(ForgotPassword())">Recuperación de contraseña</div>
                                </div>
                                <div id="login-box-content">
                                    <div class="title">Autorización</div>
                                    <div class="desc">Please sign in to access your account</div>

                                    <div id="loginForNet">
                                        <form action="<?=base_url()?>users/login" method="post" id="netLogin">
                                            <p class="rel">
                                                <input type="email" name="email" id="username" placeholder="E-mail">
                                            </p>
                                            <p class="rel">
                                                <input type="password" name="passwword" id="passwword" placeholder="Contraseña">
                                            </p>
                                            <p class="clearfix rem">
                                                <input checked="checked" type="checkbox" class="custom-checkbox" name="remember-me" id="remember-me">
                                                <label for="remember-me"> Recuerde</label>
                                                <input type="hidden" name="op" value="login" />
                                                <a class="submit-btn-grey" style="font-size:8pt;" id="userLogin">Iniciar sesión</a>
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
                                <form action="<?=base_url()?>users/register" method="post" id="registrationForm">
                                    <p class="rel">
                                        <input type="text" name="username" id="username" placeholder="Nombre" class="form-control">

                                        <input type="password" name="password" id="password" placeholder="Contraseña">
                                    </p>
                                    <p class="rel">
                                        <input type="email" name="email" id="email" placeholder="E-mail">
                                    </p>
                                    <p class="rel"> 
                                        <span id="genderS">
                                            Género 
                                            <span class="female">
                                                Mujer <input type="radio" id="female" name="gender" value="2">
                                            </span>
                                            <span class="male">
                                                Hombre <input type="radio" id="male" name="gender" value="1" checked="checked">
                                            </span>
                                        </span> 
                                        <span id="birthday"> Fecha de nacimiento                                

                                            <select class="inputDay" id="inputDay" name="inputDay">
                                                <option value="">Día</option>
                                                <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>                               
                                            </select>
                                            <select class="inputMonth" id="inputMonth" name="inputMonth">
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
                                            <select class="inputYear" id="inputYear" name="inputYear">
                                                <option value="">Año</option>
                                                <option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option>                                </select>
                                        </span> 
                                    </p>
                                    <p class="rel"> 
                                        <span class="not"></span> 
                                        <span class="upAuth"></span> 
                                        <img class="imagereg" src="http://peliculas.is/public//images/regLoader.gif">
                                        <input type="submit" name="registration"  id="registration" value="registro">
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







            
            <!-- menu -->

            <div id="Headmenu" >
                <div class="hr"></div>
                <div id="headCont"> <a id="logo" class="ajaxRequest" href="<?=base_url()?>"></a>
                    <div class="workingLogo" style=""></div>
                    <div id="manueBg">
                        <ul>
                            <li id="li-search"><a href="http://peliculas.is/public/movies/filter" class="navMovie ajaxRequest"  id="ico-search"><span>Peliculas</span></a>
                                <ul>
                                    <li class="arrowUp"><span></span></li>
                                    <li><a href="http://peliculas.is/public/movies/search/genres/41" data-genre="41" >Animation</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/movies/search/genres/32" data-genre="32">Documentary</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/movies/search/withtrailer/1">Trailer</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a href="http://peliculas.is/public/collections/" class="ajaxRequest">Colecciones</a></li>
                                </ul>
                            </li>
                            <li id="li-episodes"><a href="http://peliculas.is/public/movies/serials" class="navEpisode ajaxRequest" id="ico-episodes"><span>Series</span></a>
                                <ul>
                                    <li class="arrowUp"><span></span></li>
                                    <li><a  class="ajaxRequest" href="http://peliculas.is/public/movies/serials/lang/russian/">Russian</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a class="ajaxRequest" href="http://peliculas.is/public/movies/serials/lang/turkish/">Turkish</a></li>
                                    <li style="color:#ccc;margin-top: 9px;text-decoration: none;">|</li>
                                    <li><a class="ajaxRequest" href="http://peliculas.is/public/movies/serials/type/mini/">Mini-series</a></li>
                                </ul>
                            </li>
                            <li id="li-videos"><a href="http://peliculas.is/public/videos" class="ajaxRequest navVideos" id="ico-videos"><span>Videos</span></a>
                                <ul>
                                    <li class="arrowUp"><span></span></li>
                                    <li><a href="http://peliculas.is/public/videos/bycategory/genres/10">ახალი ამბები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/9">ვიდეო გაკვეთილები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/8">ცხოველები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/7">კომპიუტერული თამაშები</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/6">ავტო მოტო</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/5">რეკლამა</a></li><li><a href="http://peliculas.is/public/videos/bycategory/genres/4">მუსიკა </a></li>            
                                </ul>
                            </li>
                            <li id="li-games"><a href="games" class="navGames ajaxRequest" id="ico-games"><span>Juegos</span></a>
                                <ul>
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
                            <li id="li-kolga"><a href="http://peliculas.is/public/photogallery" class="navKolga ajaxRequest" id="ico-kolga" style="width:60px"><span id="kolga">Fotos</span></a></li>
                        </ul>
                    </div>
                    <div id="profile" class="profile">
                            <?php 
                                 if ($this->session->userdata('id')) {?>
                                    <div id="logged-in" class="logged-in" style="display:block;">
                                        <a href="<?=base_url()?>users/mypage?>">
                                        <?php
                                        if ($account->img=="") {
                                            echo ' <img src="http://staticnet.adjara.com/imagesNew/man.png" alt="" id="user_image"> ';
                                        }else{
                                            echo ' <img src="'.$account->img.'" alt="" id="user_image"> ';
                                        }
                                        ?>
                                           
                                            <span id="auth-displayname"><?=$this->session->userdata('username');?></span> 
                                        </a> 
                                        <div style="display: none;" id="logged-in-dropdown" class="logged-in-dropdown">
                                                     <div class="arrow"></div>
                                            <span class="sprite dropdown-arrow">arrow</span>
                                            <ul>
                                                <li class="first-child">
                                                    <a href="<?=base_url()?>users/mypage">ჩემი გვერდი</a>
                                                </li>
                                                <li>
                                                    <a href="<?=base_url()?>users/userLists">ჩემი სიები</a>
                                                </li>
                                                <li>
                                                    <a href="<?=base_url()?>users/wishlist">ვაპირებ ყურებას</a>
                                                </li>
                                                <li>
                                                    <a href="<?=base_url()?>users/rates">გამოწერილი</a>
                                                </li>
                                                <li>
                                                    <a href="<?=base_url()?>users/history">ისტორია</a>
                                                </li>
                                                <li>
                                                    <a href="<?=base_url()?>users/logout" >გამოსვლა</a>
                                                </li>
                                            </ul>  
                                        </div><!-- .logged-in-dropdown-->
                                    </div>

;
                             <?php     }else{?>
                                    <div id="login" class="login" style="display:block;" onClick="return(showmovieWant())"> <a href="#" >Iniciar sesión</a></div> 
                              <?php    }

                            ?>

                              

                     </div>
                    <!-- .profile --> 

                </div>
            </div>



            <div id="contentor" class="contentor"> 
                <!--
                                            <div class="search-scroll">
                                                <div class="search-scroll-btn"></div>
                                            </div>-->
<div id="home-page" class="home-page clearfix"> 