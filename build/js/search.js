var genre_ids = new Array();
var rating_ids = new Array();
var lang_ids = new Array();
var country_ids = new Array();
var abc_ids = new Array();
var rating = new Array();
var startDate;
var endDate;
var currentYear = (new Date).getFullYear();


function removeA(arr) {
    var what, a = arguments, L = a.length, ax;
    while (L > 1 && arr.length) {
        what = a[--L];
        while ((ax = arr.indexOf(what)) !== -1) {
            arr.splice(ax, 1);
        }
    }
    return arr;
}

$(document).ready(function () {

//    $("a").click(function (event) {
//        $('#contentor').load($(this).attr("href") + " #contentor", function () {
//            $("html, body").animate({scrollTop: 0}, "slow");
//        });
//        event.preventDefault();
//    });

    $(".toggle").button();
    $("li[data-labelfor]").click(function () {
    
        $('#' + $(this).attr("data-labelfor")).prop('checked',
                function (i, oldVal) {
                    return !oldVal;
                });
    });


    $(".search_panel_controller").click(function () {
        $(".search_panel").toggle("slow");
    });
    $("#genresForm").buttonset();
    $("#genresForm input[type=checkbox]").change(function () {
        
             if ($(this).is(':checked')) {
            genre_ids.push($(this).val());
        } else {
            removeA(genre_ids, $(this).val());
        }
        filter();
    });


    $("#countriesForm").buttonset();
    $("#countriesForm input[type=checkbox]").change(function () {
        if ($(this).is(':checked')) {
            country_ids.push($(this).val());
        } else {
            removeA(country_ids, $(this).val());
        }
        filter();
    });

    $("#abcForm").buttonset();
    $("#abcForm input[type=checkbox]").change(function () {
        if ($(this).is(':checked')) {
            abc_ids.push($(this).val());
        } else {
            removeA(abc_ids, $(this).val());
        }
        filter();
    });

    startDate = 1900;
    endDate = currentYear;

    $("#slider-range").slider({
        range: true,
        min: 1900,
        max: currentYear,
        values: [1900, currentYear],
        slide: function (event, ui) {
            $("#date").val(ui.values[0] + "-" + ui.values[1]);
        },
        change: function (event, ui) {
            $("#date").trigger("change");
            startDate = ui.values[0];
            endDate = ui.values[1];
            filter();
        }
    });
    $("#date").val($("#slider-range").slider("values", 0) +
            "-" + $("#slider-range").slider("values", 1));

    $(".rangePo1").slider({
        range: true,
        min: 1,
        max: 10,
        values: [1, 10],
        slide: function (event, ui) {
            $("#amount1").val(ui.values[0] + "-" + ui.values[1]);
        },
        change: function (event, ui) {
            $("#amount1").trigger("change");
            rating["imdbStart"] = ui.values[0];
            rating["imdbEnd"] = ui.values[1];
            filter();
        }
    });

    $(".rangePo2").slider({
        range: true,
        min: 1,
        max: 10,
        values: [1, 100],
        slide: function (event, ui) {
            $("#amount2").val(ui.values[0] + "-" + ui.values[1]);
        },
        change: function (event, ui) {
            $("#amount2").trigger("change");
            rating["rtkStart"] = ui.values[0];
            rating["rtkEnd"] = ui.values[1];
            filter();
        }
    });

    $(".rangePo3").slider({
        range: true,
        min: 1,
        max: 10,
        values: [1, 10],
        slide: function (event, ui) {
            $("#amount3").val(ui.values[0] + "-" + ui.values[1]);
        },
        change: function (event, ui) {
            $("#amount3").trigger("change");
            rating["rtaStart"] = ui.values[0];
            rating["rtaEnd"] = ui.values[1];
            filter();
        }
    });

    function isset(data) {
        if (typeof (data) !== "undefined" && data !== null) {
            return true;
        }
        else
            return false;
    }
    

    function filter() {
		
		var pathname = window.location.pathname; // Returns path only
		var segments = pathname.split('/');
		var place = segments[2];
			
			
			
        $('#movies').html('Cargando...');
        var seachParams = "";
        if (genre_ids.length > 0) {
            if (seachParams !== "")
                seachParams = seachParams + "/genres/" + genre_ids.toString();
            else
                seachParams = "genres/" + genre_ids.toString();
        }

        if (country_ids.length > 0) {
            if (seachParams !== "")
                seachParams = seachParams + "/countries/" + country_ids.toString();
            else
                seachParams = "countries/" + country_ids.toString();
        }
        if (abc_ids.length > 0) {
            if (seachParams !== "")
                seachParams = seachParams + "/abc/" + abc_ids.toString();
            else
                seachParams = "abc/" + abc_ids.toString();
        }

        if (startDate !== 1900 || endDate !== currentYear) {
            if (seachParams !== "")
                seachParams = seachParams + "/year/" + startDate + "_" + endDate;
            else
                seachParams = "year/" + startDate + "_" + endDate;
        }
        else
            if (startDate !== 1900 || endDate !== currentYear) {
            seachParams =seachParams;
        }

        if (rating["imdbStart"]==1 && rating["imdbEnd"]==10) {
            seachParams =seachParams;
        }
        else
        if (isset(rating["imdbStart"]) || isset(rating["imdbEnd"])) {
            if (seachParams !== "")
                seachParams = seachParams + "/imdb/" + rating["imdbStart"] + "_" + rating["imdbEnd"];
            else
                seachParams = "imdb/" + rating["imdbStart"] + "_" + rating["imdbEnd"];
        }
        
            
        if (rating["rtkStart"]==1 && rating["rtkEnd"]==10) {
            seachParams =seachParams;
        }else
        if (isset(rating["rtkStart"]) || isset(rating["rtkEnd"])) {
            if (seachParams !== "")
                seachParams = seachParams + "/rtk/" + rating["rtkStart"] + "_" + rating["rtkEnd"];
            else
                seachParams = "rtk/" + rating["rtkStart"] + "_" + rating["rtkEnd"];
        }
       
        if (rating["rtaStart"]==1 && rating["rtaEnd"]==10) {
            seachParams =seachParams;
        }
        else
        if (isset(rating["rtaStart"]) || isset(rating["rtaEnd"])) {
            if (seachParams !== "")
                seachParams = seachParams + "/rta/" + rating["rtaStart"] + "_" + rating["rtaEnd"];
            else
                seachParams = "rta/" + rating["rtaStart"]+0 + "_" + rating["rtaEnd"]+0;
       	 }
        else{
            seachParams=seachParams;
        }
        
        var actor = "";
        if( $("actor").length !== 0 ) {
            if( seachParams ) {
                actor = "/actor_id/"+$("actor").attr("id");
            } else {
                actor = "actor_id/"+$("actor").attr("id");
            }
        }
        else{
            seachParams=seachParams;
        }
       
        var reload_link='';
        if(seachParams!==""){
            $(".view-switcher").hide("slow");
            $(".top-movies-switcher").hide("slow");
			if(place=="videos"){
				reload_link="videos/bycategory/"+seachParams+actor;
			}else{
				reload_link="movies/search/"+seachParams+actor;	
			}
        }
        else{
            $(".view-switcher").show("slow");
            $(".top-movies-switcher").show("slow"); 
            reload_link=window.location.pathname;
        }
        var page =1;
        $('#movies').load(reload_link+" #movies",function(callback){
            var html    = $.parseHTML(callback);
            var scripts =$(html).find(".playScript").text();
            var page =1;
            scripts=scripts.replace("location.pathname", "reload_link");
            $("#filters").attr("data-atr","1");
            eval(scripts);
			if(place!="videos"){
				$("#Headmenu").removeClass("reactive");
			}
        });
        $("html").find("#filters").attr("data-atr","1");
    }

    $(".pagination a").live("click", function (i, val) {
     $(".wrapper").append('<div class="loading-overlay"><i class="fa fa-spinner fa-pulse"></i> </div>');
        $('#movies').load($(this).attr("data-url") + " #movies",function(){
            var body = $("html, body");
            body.stop().animate({scrollTop:0}, '500', 'swing');
            eval($(html).find(".playScript").text());
             $(".loading-overlay").remove();
        });
    });
});

