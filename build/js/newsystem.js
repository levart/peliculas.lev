var pageLoader = {

    staticUrl: 'http://allanimes.net/',
    siteUrl: 'http://allanimes.net/',

    // inicializacia
    init: function () {

        this.manueEfects()

    },
    manueEfects: function () {
        $("#manueBg > ul > li ").mousemove(function () {
            $(this).children('ul').css('display', 'block')
        }).mouseleave(function () {
            $(this).children('ul').css('display', 'none')
        })
    }
   

}


     $(document).on("click",".registrTab",function (e) {
            
        $("#authorizationContent > #loginDiv > .registrBtn").hide()
        $(authorizationContent.loginDiv).animate({marginTop: '-240px'}, 700, function () {
            $(authorizationContent.mainDiv).addClass('active')
        })
        e.preventDefault()
    })

    $(".upAuth").click(function () {
        $(authorizationContent.loginDiv).animate({marginTop: '20px'}, 700, function () {
            $("#authorizationContent > #loginDiv > .registrBtn").show()
            $(authorizationContent.mainDiv).removeClass('active')
        })
    })


    $("#registration").on("click",function(){
            
            $.ajax({
                type: "POST",
                url: $("#registrationForm").attr('action'),
                data: $("#registrationForm").serialize(),
                cache: false,
                success:function(response){ 
                        if (response.redirect) {
                            window.location.href = 'http://allanimes.net/home/index';
                            location.reload(true);
                        }
                        else {
                            // Process the expected results...
                        }
                },
                error: function(xhr, textStatus, errorThrown) { 
                    alert('Error! '); 
                 }  
            });
            return false;
        });


    $("#userLogin").on("click",function(){
            
            $.ajax({
                type: "POST",
                url: $("#netLogin").attr('action'),
                data: $("#netLogin").serialize(),
                cache: false,
                success:function(json){ 
                    var arr = JSON.parse(json);
                    if(arr.success == true){
                        location.reload(); 
                    }else{
                        $('#error-massage').html(arr.massage);
                    }
                },
                error: function(xhr, textStatus, errorThrown) { 
                    alert('Error! '); 
                 }  
            });
            return false;
        });


    $("#recoveryPass").on("click",function(){
            $.ajax({
                type: "POST",
                url: $("#PassRecovery").attr('action'),
                data: $("#PassRecovery").serialize(),
                cache: false,
                success: function (json) {
                    var arr = JSON.parse(json);
                    //function success
                    // $('.message').html(data);
                    // $.sticky(arr.massage, {autoclose : 2000, position: "top-right" , type: "st-success"});
                },
            });
            return false;
        });

    $("#changePassword").on("click",function(){
            $.ajax({
                type: "POST",
                url: $("#PassChange").attr('action'),
                data: $("#PassChange").serialize(),
                cache: false,
                success: function (json) {
                    var arr = JSON.parse(json);
                    //function success
                    // $('.message').html(data);
                    // $.sticky(arr.massage, {autoclose : 2000, position: "top-right" , type: "st-success"});
                },
            });
            return false;
        });

        $("#editProfile").on("click",function(){
            $.ajax({
                type: "POST",
                url: $("#profileEdit").attr('action'),
                data: $("#profileEdit").serialize(),
                cache: false,
                success: function (json) {
                  console.log(" success");
                 
                },
            });
            return false;
        });

        $(".avatarDelete").on("click",function(){
            $.ajax({
                type: "POST",
                url: 'http://allanimes.net/users/avatarDelete',
                data: "",
                cache: false,
                success: function (json) {
                  $("#user_image").attr("src", "http://staticnet.adjara.com/imagesNew/man.png");
                },
            });
            return false;
        });


       $(".addToList").on("click",function(){

         
            var $this = $(this);
            var name =  $(".imtListAdd").find('input').attr('value');
            var movie = $this.data('movie');
           
           
            $.ajax({
                type: "POST",
                url: "/movies/insertListName/",
                data:  'name='+name+'&movie='+movie,
                cache: false,
                success:function(response){ 
                    $(".listitem").find("span.selected").removeClass("selected");
                    $(".cheKed").attr("src" , "http://allanimes.net/assets/images/checkedW.png");   
                    var mov = JSON.parse(response);
                    $("#chooseList").append("<li class='listitem' data-id='"+(mov.lastid)+"' data-movie='"+movie+"'><span class='selected'></span>"+(mov.name)+"</li>");   
                
                } 
            });
        
       
        }); 




// filmis siashi damateba

    $(".listitem").on("click",function(){
            var $this = $(this);
            var pl_id =  $this.data('id');
            var mov_id =  $this.data('movie');

            if($(this).find("span").attr("class")=="selected"){
               $.ajax({
                    type: "POST",
                    url: "/movies/removeInUsersList/",
                    data: '&mov_id='+mov_id,
                    cache: false,
                    success:function(response){ 
                             //alert("ფილმი დამატებულია სიაში");
                             $(".cheKed").attr("src" , "http://staticnet.adjara.com/images/add-to-list.png");  
                              $(".listitem").find("span.selected").removeClass("selected");
                    } 
                });
            }else{
                $(".listitem").find("span.selected").removeClass("selected");
                $.ajax({
                    type: "POST",
                    url: "/movies/insertInUsersList/",
                    data:  'pl_id='+pl_id+'&mov_id='+mov_id,
                    cache: false,
                    success:function(response){ 
                             //alert("ფილმი დამატებულია სიაში");
                             $(".cheKed").attr("src" , "http://allanimes.net/assets/images/checkedW.png");  
                              $this.find("span").addClass("selected");
                    } 
                });
            }
                
      
        });




    if($('#chooseList').find("span").hasClass('selected')){
         $(".cheKed").attr("src" , "http://allanimes.net/assets/images/checkedW.png"); 
    }else{
        $(".cheKed").attr("src" , "http://staticnet.adjara.com/images/add-to-list.png"); 
    }



    $(".add-watchlist ").on("click",function(){

            var $this = $(this);
            var movie =  $this.data('movie');

            if($(this).hasClass('selected')){
               
                $.ajax({
                    type: "POST",
                    url: "/movies/deleteFromWatchlist/",
                    data:  'movie='+movie,
                    cache: false,
                    success:function(response){ 
                             $(".watchlist").attr("src" , "http://staticnet.adjara.com/images/eyes.png"); 
                             $(this).removeClass("selected");
                    } 
                });
            }else{
                $.ajax({
                    type: "POST",
                    url: "/movies/insertInWatchlist/",
                    data: 'movie='+movie,
                    cache: false,
                    success:function(response){ 
                             $(".watchlist").attr("src" , "http://staticnet.adjara.com/images/checkedW.png");  
                              $(".add-watchlist ").addClass("selected");
                    } 
                });
            }
           
        
       
        }); 


        $(".remove_watchlist ").on("click",function(){
            var $this = $(this);
            var movie =  $this.data('movid');
                $.ajax({
                    type: "POST",
                    url: "/movies/deleteFromWatchlist/",
                    data: 'movie='+movie,
                    cache: false,
                    success:function(response){ 
                       $this.parent().hide();
                    } 
                });
        }); 




var authorizationContent = {
    mainDiv: '#authorizationContent',
    loginDiv: '#loginDiv',
    registrDiv: '#registrDiv',
    closeLogin: '.close-login',
    registration: '#registration',
    registrationFilds: ['username', 'passwword', 'email', 'gender', 'inputDay', 'inputMonth', 'inputYear'],
    genderSpan: '.genderSpan',
    registrError: 0,
    xhr: 0,
    netLogin: '#netLogin',
    init: function () {
        //aq unda shemowmdes aris tuara momxmarebeli avtorizirebuli da sheiqmnas obieqti shesabamisad

        $("#genderS input").click(function (e) {
            e.stopPropagation()
            $(this).attr('checked', true)
            $("#gender").val($(this).val())
            //authorizationContent.genderEfect()
        })

        /*      $(this.genderSpan).click(function(){    
         authorizationContent.genderEfect()
         }) */

        $(this.closeLogin).click(function () {

            $("#overlay-inner").click()
            $("#authorizationContent > #loginDiv > .registrBtn").show()
            $(authorizationContent.loginDiv).css('margin-top', '20px')
            $(authorizationContent.mainDiv).removeClass('active')
            $(".confirmRegistr").hide()
        })

        $(document).on("click",".registrTab",function (e) {
            alert('jsnkcn');
            $("#authorizationContent > #loginDiv > .registrBtn").hide()
            $(authorizationContent.loginDiv).animate({marginTop: '-240px'}, 700, function () {
                $(authorizationContent.mainDiv).addClass('active')
            })
            e.preventDefault()
        })

        $(".upAuth").click(function () {
            $(authorizationContent.loginDiv).animate({marginTop: '20px'}, 700, function () {
                $("#authorizationContent > #loginDiv > .registrBtn").show()
                $(authorizationContent.mainDiv).removeClass('active')
            })
        })

        $(this.registration).click(function (e) {
            authorizationContent.registrValidation()
            e.preventDefault()
        })

        $(this.netLogin).find('#login').bind('click', function (e) {
            authorizationContent.netAuthorization()
            e.preventDefault()
        })

    },
    netAuthorization: function () {
        var login = $(this.netLogin).find('#username');
        var passw = $(this.netLogin).find('#passwword');
        var $err = 0
        if (isEmpty($(login).val())) {
            $err++
            $(login).css('border-color', 'red')
        } else {
            $(login).css('border-color', '#bbb')
        }

        if (isEmpty($(passw).val())) {
            $err++
            $(passw).css('border-color', 'red')
        } else {
            $(passw).css('border-color', '#bbb')
        }

        if ($err == 0) {
            if (this.xhr == 0) {
                this.xhr = 1;
                var user = $('#username').attr('value');
                var pass = $('#passwword').attr('value');
                var remember = ($('#remember-me:checked') ? '1' : '0');
                $.get(siteUrl + "/Login/netLogin?ajax=1&user=" + user + "&pass=" + pass + "&remember=" + remember, function (data) {
                    if (data[0] == 1) {
                        window.location = window.location.href;
                    } else {
                        $("#login-box-content .desc").addClass('active');
                        $("#login-box-content .desc").html('áƒ—áƒ¥áƒ•áƒ”áƒœ áƒ¨áƒ”áƒªáƒ“áƒáƒ›áƒ˜áƒ— áƒ›áƒ˜áƒ£áƒ—áƒ˜áƒ—áƒ”áƒ— áƒ”áƒš-áƒ¤áƒáƒ¡áƒ¢áƒ, áƒáƒœ áƒžáƒáƒ áƒáƒšáƒ˜')
                        authorizationContent.xhr = 0;
                    }
                }, 'json');

            }
        }

    },
    genderEfect: function () {
        /*
         if($("#gender").val() == 'male'){
         $("#gender").val('female')
         $(this.genderSpan).html('Female')          
         }else{
         $("#gender").val('male')
         $(this.genderSpan).html('Male')
         }
         */
    },
    registrValidation: function () {
        this.registrError = 0
        var $arr = []
        for (var i = 0; i < this.registrationFilds.length; i++) {
            //vawmowmebt shevsebulia tu ara yvela veli
            if (isEmpty($("#registrationForm").find("#" + this.registrationFilds[i]).val())) {
                $("#registrationForm").find("#" + this.registrationFilds[i]).css('border-color', 'red')
                this.registrError++;
            } else {
                $arr[this.registrationFilds[i]] = $("#registrationForm").find("#" + this.registrationFilds[i]).val()
                $("#registrationForm").find("#" + this.registrationFilds[i]).css('border-color', '#bbb')
            }
        }

        if (this.registrError == 0) {
            this.sendRequest($arr)
        }
    }
};


