$(document).ready(function () {



    mainSlider.init();
    $('#thumbFeatures').jshowoff({cssClass: 'thumbFeatures', effect: 'slideLeft', hoverPause: true});



    $("body").delegate("#gradient", "mouseenter", function () {
        $(this).find("span.play").trigger("hover");
    });



    $("html").delegate("body", "urlChanged", function (e) {
        var page = 1;
        jQuery.globalEval('var page =1');
        /*loaderi*/
        //$(".wrapper").append('<div class="loading-overlay"><i class="fa fa-spinner fa-pulse"></i> </div>');
        $.get(window.location.pathname, {}, function (callback) {

            var html = $.parseHTML(callback);
            var content = $(html).find("#contentor");
            $("#contentor").html(content.html());
            $("#Headmenu").removeClass("active");
            eval($(html).find(".playScript").text());
            $('script[src="js/search.js"]').remove();
            $("body").append('<script src="js/search.js"></script> ');
            $("link[href='../jquery-ui-1.11.4.custom/jquery-ui.css']").attr("href", "jquery-ui-1.11.4.custom/jquery-ui.css");
            $(".followScroll").find(".slider-con").show();
            $(".contentor").show().css("opacity", "1");
            $("body").stop().animate({scrollTop: 0}, '500', 'swing', function () {
                FB.XFBML.parse();
            });
            setTimeout(function () {
                $(".contentor").show().css("opacity", "1");
                $(".loading-overlay").remove();
            }, 200);
        });
    });

    $("body").delegate("#user_image", "mouseenter", function () {
        $(this).parent().find("#logged-in-dropdown").css("display", "block");
    });

    $("body").delegate("#logged-in-dropdown", "mouseleave", function () {

        $("#logged-in-dropdown").css("display", "none");
    });

    $('div.notifications').die('click').live('click', function (e) {
        $(this).parent().find("#unread").css("display", "block");
    })

    $('div.notifications').bind('mouseleave', function (e) {
        $("#unread").css("display", "none");
    })

    /**
     * @description Initialization
     * 
     * @returns {VOID}
     */
    $(".slider-con").show();

    $(".bunddle-title").on("hover", function (e) {
        e.preventDefault();
    });



    $("body").delegate(".myTabs", "click", function (event) {
        // Prevent Default event
        event.preventDefault();
        // Take href attribute
        var target = $(this).attr("href");
        // Make changes
        $(".myTabs.active").removeClass("active");
        $(this).addClass("active");
        $(".tabcon").hide();
        $('' + target + '').show();
    });

    $("body").delegate(".closeDef", "click", function () {
        $("#player").hide("slow");
        $(".openDef").show();
    });

    $("body").delegate(".openDef", "click", function () {
        $(this).hide();
        $("#player").show("slow");
    });

    $("body").delegate(".trailer-btn:not(.notrailer)", "click", function () {
        var trailer = $(this).attr("trailer");
        $(".wrapper").append('<div class="custom-overlay"></div>');
        var top = $(window).scrollTop() + 200;


        $("body").prepend('<div id="trailer-box" style="top: ' + top + 'px;display: block;"> <div id="trailer-box-inner"><a  class="sprite close-trailer-btn" title="CLOSE"> X CLOSE</a><div id="trailer-video">' + trailer + '</div><!--#trailer-video--><div id="trailers-switch-buttons"></div></div><!--#trailer-box-inner--></div>');



        $("#trailer-box").find("iframe").css({
            width: 640,
            height: 360
        });
    });



    /*ukan dabruneba*/

    $(window).bind('popstate', function () {

        var returnLocation = history.location || document.location;
        /*loaderi*/
        //$(".wrapper").append('<div class="loading-overlay"><i class="fa fa-spinner fa-pulse"></i> </div>');
        // Prevent Default Event
        event.preventDefault();
        // Prevented URL
        var targetURL = history.location || document.location;
        history.pushState(null, null, targetURL);
        // Ajax Call
        var page = 1;
        jQuery.globalEval('var page =1');
        $.get(targetURL, {}, function (callback) {
            var html = $.parseHTML(callback);
            var content = $(html).find("#contentor");
            $("#contentor").html("");
            $("#contentor").html(content.html());
            eval($(html).find(".playScript").text());
            $('script[src="js/search.js"]').remove();
            /*$('script[src="js/jquery-1.11.3.min.js"]').remove();*/
            /* $("body").append('<script src="js/jquery-1.11.3.min.js"></script> ');	*/
            $("body").append('<script src="js/search.js"></script> ');
            $("link[href='css/jquery-ui.css']").attr("href", "jquery-ui-1.11.4.custom/jquery-ui.css");
            eval($(html).find(".playScript").text());
            $(".slider-con").show();
            var container = $('#genreSelector.w900');
            closeSearch();
            $(".loading-overlay").remove();
        })
                .done(function (n) {
                    var place = targetURL.substr(targetURL.lastIndexOf('/') + 1);
                    if (place == "grid") {
                        $("#Headmenu").removeClass("reactive");
                    }
                });
    });
    /**
     * @description Ajax paging
     */
    $("body").delegate('#li-search a[href*="search/genres"], #li-search a[href*="search/withtrailer"], .ajaxRequest, .to-grid, .to-list', "click", function ( ) {
        /*loaderi*/
        //$(".wrapper").append('<div class="loading-overlay"><i class="fa fa-spinner fa-pulse"></i> </div>');
        // Prevent Default Event
        event.preventDefault();
        // Prevented URL
        var targetURL = $(this).attr("href");
        var genre = $(this).attr("genre");
        var stateObj = {nan: "null"};
        history.pushState(null, null, targetURL);
        // Ajax Call
        var page = 1;
        jQuery.globalEval('var page =1');
        $.get(targetURL, {}, function (callback) {
            var html = $.parseHTML(callback);
            var content = $(html).find("#contentor");
            $("#contentor").html("");
            $("#contentor").html(content.html());
            eval($(html).find(".playScript").text());
            $('script[src="js/search.js"]').remove();
            $("body").append('<script src="js/search.js"></script>');
            $("link[href='css/jquery-ui.css']").attr("href", "jquery-ui-1.11.4.custom/jquery-ui.css");
            eval($(html).find(".playScript").text());
            $("#check" + genre).trigger("click");
            $(".slider-con").show();
            var offset = $("#check" + genre).offset();
            var container = $('#genreSelector.w900'),
                    scrollTo = $('#check' + genre);
            closeSearch();
            $(".loading-overlay").remove();
        })
                .done(function (n) {
                    var place = targetURL.substr(targetURL.lastIndexOf('/') + 1);

                    if (place == "grid") {
                        $("#Headmenu").removeClass("reactive");
                    }
                });
    });

    /**
     * @description Country Box
     */
    $("body").delegate(".categories-sort-btn", "click", function () {
        $(".categorias-fs").show("slow");
        $(".categories-sort-btn").hide();
        $(".categories-hide").show();
    });

    $("body").delegate(".categories-hide", "click", function () {
        $(".categorias-fs").hide("slow");
        $(".categories-sort-btn").show();
        $(".categories-hide").hide();
    });

    /**
     * @description Country Box
     */
    $("body").delegate(".country-sort-btn", "click", function () {
        $("#search-results-sort .country-sort").show("slow");
        $(".country-sort-btn").hide();
        $(".country-hide").show();
    });

    $("body").delegate(".country-hide", "click", function () {
        $("#search-results-sort .country-sort").hide("slow");
        $(".country-sort-btn").show();
        $(".country-hide").hide();
    });

    /**
     * @description Date box
     */
    $("body").delegate(".date-sort-btn", "click", function () {
        $(".date-sort").show("slow");
        $(".date-sort-btn").hide();
        $(".date-hide").show();

    });

    $("body").delegate(".date-hide", "click", function () {
        $(".date-sort").hide("slow");
        $(".date-sort-btn").show();
        $(".date-hide").hide();
    });

    /**
     * @description Rating box
     */
    $("body").delegate(".rating-sort-btn", "click", function () {
        $(".rating-sort-btn").show("slow");
        $(".rating-sort").show("slow");
        $(".rating-sort-btn").hide();
        $(".rating-hide").show();

    });

    $("body").delegate(".rating-hide", "click", function () {
        $(".rating-sort-btn").hide("slow");
        $(".rating-sort").hide("slow");
        $(".rating-sort-btn").show();
        $(".rating-hide").hide();

    });

    $("body").delegate(".contact .fildsSend", "click", function (e) {
        var name = $(".contact input[name='name']").val();
        var email = $(".contact input[name='email']").val();
        var message = $(".contact .fildsText textarea").val();
        var captcha = $(".contact .cpatcha").val();
        var subject = "Contactos";
        $.post("http://peliculas.is/public/contact/send/", {name: name, email: email, message: message, captcha: captcha, subject: subject}, function (callback) {
            $(".contact .cpatcha").val("");
            $(".contact img").attr("src", "http://peliculas.is/public/tools/captcha/w/110/h/30/ch/5/");
            $(".contact .fildsText textarea").val("");
            $(".contact input[name='name']").val("");
            $(".contact input[name='email']").val("");
            $(".contact .closePopUp").trigger("click");

        });
    });

    /**
     * @description Language box
     */
    $("body").delegate(".language-sort-btn", "click", function () {
        $("#search-results-sort .lang").show("slow");
        $(".language-sort-btn").hide();
        $(".language-hide").show();

    });

    $("body").delegate(".language-hide", "click", function () {
        $("#search-results-sort .lang").hide("slow");
        $(".language-sort-btn").show();
        $(".language-hide").hide();

    });

    /**
     * @description Ratings
     */
    $("body").delegate(".imdb", "click", function () {
        if (!$(this).hasClass("active")) {
            $(".rangePo1").show();
            $(".rangePo2").hide();
            $(".rangePo3").hide();
            $(".tomatoes-critics").removeClass("active");
            $(".tomatoes-auditory").removeClass("active");
            $("#amount2").hide();
            $("#amount3").hide();
            $(this).addClass("active");
            $("#amount1").show();
        } else {
            $(this).removeClass("active");
            $(".rangePo1").hide();
            $("#amount1").hide();
        }
    });

    $("body").delegate(".tomatoes-critics", "click", function () {
        if (!$(this).hasClass("active")) {
            $(".imdb").removeClass("active");
            $(".rangePo1").hide();
            $(".rangePo2").show();
            $(".rangePo3").hide();
            $(".tomatoes-auditory").removeClass("active");
            $("#amount1").hide();
            $("#amount3").hide();
            $(this).addClass("active");
            $("#amount2").show();
        } else {
            $(".rangePo2").hide();
            $(this).removeClass("active");
            $("#amount2").hide();
        }
    });

    $("body").delegate(".tomatoes-auditory", "click", function () {
        if (!$(this).hasClass("active")) {
            $(".imdb").removeClass("active");
            $(".rangePo1").hide();
            $(".rangePo2").hide();
            $(".rangePo3").show();
            $(".tomatoes-critics").removeClass("active");
            $("#amount1").hide();
            $("#amount2").hide();
            $(this).addClass("active");
            $("#amount3").show();
        } else {
            $(".rangePo3").hide();
            $(this).removeClass("active");
            $("#amount3").hide();
        }
    });

    /*
     * @description Genres Arrows
     *  
     * @returns {VOID}
     */
    $("body").delegate(".slider-nxt", "click", function () {
        var scrollTo = $(this).parent().find('.mustScroll').scrollLeft();
        $(this).parent().find('.mustScroll').animate({
            scrollLeft: scrollTo + 150
        }, 500);

    });

    $("body").delegate(".slider-pre", "click", function () {
        var scrollTo = $(this).parent().find('.mustScroll').scrollLeft();
        $(this).parent().find('.mustScroll').animate({
            scrollLeft: scrollTo - 150
        }, 500);

    });

    /**
     * @description Close search action
     * @returns {VOID}
     */
    var closeSearch = function () {
        $(".custom-overlay").remove();
        $(".n-search-cont").removeClass("indexed");
        $(".n-close-search").html("").hide();
        $(".search-result").remove();
        $(".search").val("");
        $("#trailer-box").remove();
    };

    $("body").delegate(".close-trailer-btn", "click", function () {
        closeSearch();
    })

    /**
     * Preview right 
     */
    $("body").delegate(".movie-element", "mouseenter", function () {
        var distanceRight = $(window).width() - ($(this).offset().left + $(this).width());
        if (distanceRight < 700) {
            $(this).find(".preview-block").addClass("preview-right");
        }
    });

    $("body").delegate(".movie-element", "mouseleave", function () {
        $(this).find(".preview-block").removeClass("preview-right");
    });

    $("body").delegate(".showFilter", "click", function () {
        $("#mdiv").slideUp("slow");
        $(".followScroll").slideDown("slow");

    });

    $("body").delegate('.genres-list li', 'click', function (e) {
        if ($(this).find("label").hasClass('ui-state-active')) {
            $('#sort-tags div:contains("' + $(this).find(".ui-button-text").text() + '")').remove();
        } else {
            $('<div class="showFilter">' + $(this).find(".ui-button-text").text() + '</div>').prependTo("#sort-tags");
            $('#sort-tags div:contains("' + $(this).find(".ui-button-text").text() + '"):eq(1)').remove();
        }

    });

    $("body").delegate('.country-tabs li', 'click', function (e) {
        if ($(this).find("label").hasClass('ui-state-active')) {
            $('#sort-tags div:contains("' + $(this).find(".ui-button-text").text() + '")').remove();
        } else {
            $('<div class="showFilter">' + $(this).find(".ui-button-text").text() + '</div>').prependTo("#sort-tags");
            $('#sort-tags div:contains("' + $(this).find(".ui-button-text").text() + '"):eq(1)').remove();
        }

    });

    $("body").delegate('.lang_list', 'click', function (e) {
        var id = $(this).val();
        var title = $("label[for='lang_list" + id + "']").find(".ui-button-text").text();
        if ($("label[for='lang_list" + id + "']").hasClass('ui-state-active')) {
            $('#sort-tags div:contains("' + title + '")').remove();
        } else {
            $('<div class="showFilter">' + title + '</div>').prependTo("#sort-tags");
            $('#sort-tags div:contains("' + title + '"):eq(1)').remove();
        }
    });

    $("body").delegate('.rating-sort .imdb', "click", function () {
        if ($(this).hasClass("active")) {
            $('#sort-tags div.rtCriticsFilters').remove();
            $('#sort-tags div.rtAuditoryFilter').remove();
            $('<div class="showFilter imdFilte">IMDB 1-10</div>').prependTo("#sort-tags");
        } else {
            $('#sort-tags div.imdFilte').remove();
        }
    });

    $("body").delegate('.rating-sort .tomatoes-critics', "click", function () {
        if ($(this).hasClass("active")) {
            $('#sort-tags div.imdFilte').remove()
            $('#sort-tags div.rtAuditoryFilter').remove();
            ;
            $('<div class="showFilter rtCriticsFilters">RT Critics 1-10</div>').prependTo("#sort-tags");
        } else {
            $('#sort-tags div.rtCriticsFilters').remove();
        }
    });

    $("body").delegate('a.date-sort-btn', "click", function () {
        $('<div class="showFilter dateFilter">1900-2015</div>').prependTo("#sort-tags");
    });

    $("body").delegate('a.date-hide', "click", function () {
        $('#sort-tags div.dateFilter').remove();
    });

    $("body").delegate("#date", "change", function () {
        $(".dateFilter").html($(this).val());
    });

    $("body").delegate('.rating-sort .tomatoes-auditory', "click", function () {
        if ($(this).hasClass("active")) {
            $('#sort-tags div.imdFilte').remove();
            $('#sort-tags div.rtCriticsFilters').remove();
            $('<div class="showFilter rtAuditoryFilter">RT auditory 1-10</div>').prependTo("#sort-tags");
        } else {
            $('#sort-tags div.rtAuditoryFilter').remove();
        }
    });

    $("body").delegate("#amount3", "change", function () {
        $(".rtAuditoryFilter").html('RT auditory ' + $(this).val());
    });

    $("body").delegate("#amount1", "change", function () {
        $(".imdFilte").html('IMDB ' + $(this).val());
    });

    $("body").delegate("#amount2", "change", function () {
        $(".rtCriticsFilters").html('RT Critics ' + $(this).val());
    });


    /**
     * Fixed Menu, Change Menu on scroll down
     */
    $(document).on("scroll", function () {
        var scrollTop = $("#Headmenu").offset().top;
        if (scrollTop >= 310) {
            $("#Headmenu").addClass("white-menu active");
        } else {
            $("#Headmenu").removeClass("white-menu active");
        }

        if (scrollTop >= 310) {
            $(".followScroll").hide();
            $(".followScroll").css("position", "fixed");
            $("#mdiv").slideDown(0);
        } else {
            $(".followScroll").css("position", "initial");
            $(".followScroll").slideDown(0);
            $("#mdiv").slideUp(0);
        }
    });


    /**
     * @description Live Search
     *
     * @event keyup
     * @return {VOID}
     */
    $("body").delegate(".search", "keyup", function () {
        var keyword = $(this).val();
        if (keyword.length >= 3) {
            $.get("http://peliculas.is/public/movies/search/keyword/" + keyword, {}, function (callback) {
                var data = $.parseJSON(callback);
                if (data.length >= 1) {
                    $(".search-result").remove();
                    $(".n-search-cont").append("<div class='search-result'> <div class='search-result-con'>  </div> </div>");
                    if (data.length > 5) {
                        $(".search-result").css("min-height", "512px");
                    }

                    $.each(data, function () {
                        $(".search-result-con").append('<div class="search-result-item z-search-result-item game clearfix" data-id="" "=""> <div class="item-type-movie">MOVIE</div> <div class="search-result-thumb"><img src="http://peliculas.is/public/uploads/movies/157x236-' + this.id + '.jpeg" alt="" width="214" height="321"></div><!-- .search-result-thumb --><a class="n-ov ajaxRequest" href="http://peliculas.is/public/movies/detail/id/' + this.id + '">' + this.title + '</a><a href="http://peliculas.is/public/movies/detail/id/' + this.id + '" class="search-result-title ajaxRequest"><span class="search-result-title-en">' + this.title + '</span></a><!-- .search-result-title --></div>');
                    });
                } else {
                    $(".search-result").remove();
                }
            });
        } else {
            $(".search-result").remove();
        }
    });

    /**
     * 
     * @description Focus search input
     * @event focus
     */
    $("body").delegate("input.search", "focus", function () {
        /**
         * Scroll to search input
         */
        $('html, body').animate({
            scrollTop: $(this).offset().top - 75
        }, 500);
        /**
         * Add Overlay to page
         */
        $(".custom-overlay").remove();
        $(".wrapper").append('<div class="custom-overlay" ></div>');
        /**
         * Add Close Button
         */
        $(".n-close-search").html('<i class="fa fa-times closeSearch"></i>').show();
        /** 
         * Add Index 
         */
        $(".n-search-cont").addClass("indexed");
    });

    /**
     * Search close elements
     */
    $("body").delegate(".custom-overlay", "click", function () {
        closeSearch();
    });

    $("body").delegate(".closeSearch", "click", function () {
        closeSearch();
    });
});


$(function () {

    $('.main-slider-next').die('click').live('click', function (e) {
        //next
        var sType = $(e.target).data('type');
        var divNum = parseInt(($('#' + sType + ' .slidee').length));
        var io = $('.main-slider-next[data-type="' + sType + '"]').data('io');
        io = $(e.target).data('io');
        io = ++io % (divNum);
        $('.slider-wrapperr[data-type="' + sType + '"]').stop(true, true).delay(0).animate({'opacity': 0.7}, 100);
        $('.slider-wrapperr[data-type="' + sType + '"]').animate({'left': -(io * 980/*$('.slidee').eq(io).position().left*/)}, 600);
        $('.slider-wrapperr[data-type="' + sType + '"]').animate({'opacity': 1}, 500);
        $('.main-slider-next[data-type="' + sType + '"]').data('io', io);
    });


    //prev
    $('.main-slider-prev').die('click').live('click', function (e) {
        //next
        var sType = $(e.target).data('type');
        var divNum = parseInt(($('#' + sType + ' .slidee').length));
        var io = $('.main-slider-next[data-type="' + sType + '"]').data('io');
        io = --io % divNum;
        if (io < 0)
            io = divNum - 1;
        $('.slider-wrapperr[data-type="' + sType + '"]').stop(true, true).delay(0).animate({'opacity': 0.7}, 100);
        $('.slider-wrapperr[data-type="' + sType + '"]').animate({'left': -(/*$('.slidee').eq(io).position().left*/io * 980)}, 600);
        $('.slider-wrapperr[data-type="' + sType + '"]').animate({'opacity': 1}, 500);
        $('.main-slider-next[data-type="' + sType + '"]').data('io', io);
    });



    $("body").delegate(".top-movies-switcher ul li", "click", function () {
        var type = $(this).data("type");
        switch (type) {
            case "daily":
                $("li.current-top-tab").removeClass("current-top-tab");
                $(this).addClass("current-top-tab");
                $(".by-desition").fadeOut(300, function () {
                    setTimeout(function () {
                        $(".daily-top-slider").fadeIn(300);
                    }, 300);
                });
                break;

            case "monthly":
                $("li.current-top-tab").removeClass("current-top-tab");
                $(this).addClass("current-top-tab");
                $(".by-desition").fadeOut(300, function () {
                    setTimeout(function () {
                        $(".monthly-top-slider").fadeIn(300);
                    }, 300);
                });
                break;

            case "yearly":
                $("li.current-top-tab").removeClass("current-top-tab");
                $(this).addClass("current-top-tab");
                $(".by-desition").fadeOut(300, function () {
                    setTimeout(function () {
                        $(".yearly-top-slider").fadeIn(300);
                    }, 300);
                });
                break;
        }
    });

    $('body').delegate('#x-slider-prev', 'click', function () {
        $('#sliderController .act').prev().click()
    });

    $('body').delegate('#x-slider-next', 'click', function () {
        $('#sliderController .act').next().click()
    });
});


function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = 'expires=' + d.toUTCString();
    document.cookie = cname + '=' + cvalue + '; ' + expires;
}






function simulateKeyPress(character) {
    $.event.trigger({type: 'keypress', which: character.charCodeAt(0)});
}


function showPopUpContactForm() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.contact").css('top', 100)
    $(".formPopup.contact").show()
    $(".formPopup.contact").animate({
        top: "+=" + top,
    }, 500)
    return false;
}


function sendContact() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0
    var name = $(".formPopup.contact").children('.fildsSurname').children('input:eq(0)').val()
    var email = $(".formPopup.contact").children('.fildsSurname').children('input:eq(1)').val()
    var text = $(".formPopup.contact").children('.fildsText').children('textarea').val()

    if (isEmpty(name)) {
        e++;
        $(".formPopup.contact").children('.fildsSurname').children('input:eq(0)').css('border', '1px solid red')
    } else {
        $(".formPopup.contact").children('.fildsSurname').children('input:eq(0)').css('border', '1px solid #dcdcdc')
    }

    if (!email.match(mailformat)) {
        e++;
        $(".formPopup.contact").children('.fildsSurname').children('input:eq(1)').css('border', '1px solid red')
    } else {
        $(".formPopup.contact").children('.fildsSurname').children('input:eq(1)').css('border', '1px solid #dcdcdc')
    }

    if (isEmpty(text)) {
        e++;
        $(".formPopup.contact").children('.fildsText').children('textarea').css('border', '1px solid red')
    } else {
        $(".formPopup.contact").children('.fildsText').children('textarea').css('border', '1px solid #dcdcdc')
    }
    if (e == 0) {
        $('.contact .fildsSend').html('დაელოდეთ, იგზავნება...');
        $.get('Home/Contact?ajax=1&name=' + name + '&email=' + email + '&message=' + text, function () {
            popUpResponse("თქვენი შეტყობინება მიღებულია")
            setTimeout(closePopUp, 3000)
        })
    }
}

function showReport() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.report").css('top', 100)
    $(".formPopup.report").show()
    $(".formPopup.report").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function reportPopUp() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0

    var email = $(".formPopup.report").children('.fildsName').children('input').val()
    var text = $(".formPopup.report").children('.fildsText').children('textarea').val()
    var movieID = $(".formPopup.report").children('.movieID').text()
    var category = $(".formPopup.report").children('.category').text()


    if (!email.match(mailformat)) {
        e++;
        $(".formPopup.report").children('.fildsName').children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.report").children('.fildsName').children('input').css('border', '1px solid #dcdcdc')
    }

    if (isEmpty(text)) {
        e++;
        $(".formPopup.report").children('.fildsText').children('textarea').css('border', '1px solid red')
    } else {
        $(".formPopup.report").children('.fildsText').children('textarea').css('border', '1px solid #dcdcdc')
    }

    if (e == 0) {
        $('.report .fildsSend').html('დაელოდეთ, იგზავნება...');
        popUpResponse("პრობლემის აღწერა მიღებულია")
        setTimeout(closePopUp, 3000)
    }
}

function showmovieRequest() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.movierequest").css('top', 100)
    $(".formPopup.movierequest").show()
    $(".formPopup.movierequest").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function ForgotPassword() {
    $(".close-login").click()
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.ForgotPassword").css('top', 100)
    $(".formPopup.ForgotPassword").show()
    $(".formPopup.ForgotPassword").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function sendForgotPassword() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0
    var email = $(".formPopup.ForgotPassword .fildsSurname").children('input').val()

    if (!email.match(mailformat)) {
        e++;
        $(".formPopup.ForgotPassword .fildsSurname").children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.ForgotPassword .fildsSurname").children('input').css('border', '1px solid #dcdcdc')
    }
    if (e == 0) {
        $('.ForgotPassword .fildsSend').html('დაელოდეთ, იგზავნება...');
        $.get('Home/ForgotPassword?ajax=1&email=' + email, function (date) {
            popUpResponse(date[0].text)
            setTimeout(closePopUp, 3000)
        }, 'json')
    }
}


function movieRequest() {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0

    var email = $(".formPopup.movierequest").children('.fildsName').children('input').val()
    var text = $(".formPopup.movierequest").children('.fildsText').children('textarea').val()
    var movieID = 0
    var category = $(".formPopup.movierequest").children('.category').text()


    if (!email.match(mailformat)) {
        e++;
        $(".formPopup.movierequest").children('.fildsName').children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.movierequest").children('.fildsName').children('input').css('border', '1px solid #dcdcdc')
    }

    if (isEmpty(text)) {
        e++;
        $(".formPopup.movierequest").children('.fildsText').children('textarea').css('border', '1px solid red')
    } else {
        $(".formPopup.movierequest").children('.fildsText').children('textarea').css('border', '1px solid #dcdcdc')
    }
}



function showmovieWant() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.wantMovie").css('top', 100)
    $(".formPopup.wantMovie").show()
    $(".formPopup.wantMovie").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function showchangePassword() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.changePassword").css('top', 100)
    $(".formPopup.changePassword").show()
    $(".formPopup.changePassword").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function showprofileEdit() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.profileEdit").css('top', 100)
    $(".formPopup.profileEdit").show()
    $(".formPopup.profileEdit").animate({
        top: "+=" + top,
    }, 500)
    return false;
}

function movieWant(t) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0

    var email = $(".formPopup.wantMovie").children('.fildsEmail').children('input').val()
    var text = $(".formPopup.wantMovie").children('.fildsName').children('input').val()
    var movieID = $(".formPopup.wantMovie").children('.dropDown').children('select').val()
    var category = $(".formPopup.wantMovie").children('.category').text()


    if (!email.match(mailformat)) {
        e++;
        $(".formPopup.wantMovie").children('.fildsEmail').children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.wantMovie").children('.fildsEmail').children('input').css('border', '1px solid #dcdcdc')
    }

    if (isEmpty(text)) {
        e++;
        $(".formPopup.wantMovie").children('.fildsName').children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.wantMovie").children('.fildsName').children('input').css('border', '1px solid #dcdcdc')
    }

    if (e == 0) {
        $('.wantMovie .fildsSend').html('დაელოდეთ, იგზავნება...');
    }


}


function showPopUpReportForm() {
    $("#overlay").show();
    var top = $(document).scrollTop();
    $(".formPopup.report").css('top', 100)
    $(".formPopup.report").show()
    $(".formPopup.report").animate({
        top: "+=" + top,
    }, 500)
    return false;
}





function sendReport(preport_email, pdescription) {

    var pmovie_id = parseInt(location.pathname.split("/").slice(-1));
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var e = 0

    if (!preport_email.match(mailformat)) {
        e++;
        $(".formPopup.report").children('.fildsName').children('input').css('border', '1px solid red')
    } else {
        $(".formPopup.report").children('.fildsName').children('input').css('border', '1px solid #dcdcdc')
    }

    if (isEmpty(pdescription)) {
        e++;
        $(".formPopup.report").children('.fildsText').children('textarea').css('border', '1px solid red')
    } else {
        $(".formPopup.report").children('.fildsText').children('textarea').css('border', '1px solid #dcdcdc')
    }

    if (e == 0) {
        $('.report .fildsSend').html('Por favor espera...');
        $.post('movies/problemreport', {movie_id: pmovie_id, report_email: preport_email, description: pdescription}, function (responce) {
            var json = $.parseJSON(responce);
            popUpResponse(json.msg);
            setTimeout(closePopUp, 3000);
        })
    }

}


/*
 
 function sendReport(pmovie_id,preport_email,preport_name, pdescription) {
 
 //sendReport(<?= $this->movie["id"];?>,report_email.value,report_name.value, report_problem_description.value);
 
 $.post(URL + 'movies/problemreport', {movie_id:pmovie_id,report_email:preport_email,report_name:preport_name,description: pdescription}, function (responce) {
 var json = $.parseJSON(responce);
 alert(json.msg);
 });
 }
 */

function closePopUp() {
    $(".formPopup").hide();
    $(".formPopup #popUpResponse").remove();
    $("#overlay").hide();
    $('.formPopup input[type="text"]').val('');
    $('.formPopup textarea').val('');
}



function popUpResponse(text) {
    jQuery('<div/>', {
        id: 'popUpResponse',
        text: text
    }).appendTo('.formPopup');

}


$(document).keydown(function (e) {

    if (typeof jwplayer != 'undefined') {
        e.stopPropagation();
        if (e.keyCode == 37 && e.target.tagName.toUpperCase() != 'INPUT' && e.target.tagName.toUpperCase() != 'TEXTAREA') {
            e.preventDefault();
            var Duration = jwplayer().getDuration()
            var Position = jwplayer().getPosition() - 10
            if (Position < Duration) {
                jwplayer().seek(Position)
            } else {
                jwplayer().seek(0)
            }
        } else if (e.keyCode == 39 && e.target.tagName.toUpperCase() != 'INPUT' && e.target.tagName.toUpperCase() != 'TEXTAREA') {
            e.preventDefault();
            var Duration = jwplayer().getDuration()
            var Position = jwplayer().getPosition() + 10
            if (Position < Duration) {
                jwplayer().seek(Position)
            } else {
                jwplayer().seek(Duration)
            }
        } else if (e.keyCode == 38 && e.target.tagName.toUpperCase() != 'INPUT' && e.target.tagName.toUpperCase() != 'TEXTAREA') {
            e.preventDefault();
            var Volume = jwplayer().getVolume() + 10
            if (Volume < 100) {
                jwplayer().setVolume(Volume)
            } else {
                jwplayer().setVolume(100)
            }
        } else if (e.keyCode == 40 && e.target.tagName.toUpperCase() != 'INPUT' && e.target.tagName.toUpperCase() != 'TEXTAREA') {
            e.preventDefault();
            var Volume = jwplayer().getVolume() - 10
            if (Volume < 100) {
                jwplayer().setVolume(Volume)
            } else {
                jwplayer().setMute(true)
            }
        } else if (e.keyCode === 32 && e.target.tagName.toUpperCase() != 'INPUT' && e.target.tagName.toUpperCase() != 'TEXTAREA') {
            e.preventDefault();
            jwplayer().pause()
        }
    }
});


















































