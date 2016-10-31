
$(document).ready(function () {
    //show list
    $("body").delegate(".add-to-list","click",function () {
        $(this).parent().find(".listItems").toggle();
    });
    //delete list
	$("body").delegate(".deleteList","click",function () {
        var $parent = $(this).parent().parent("div.profile-item-block");
        $.post("user/deletelist/id/" + $(this).attr("data-rec_id"), function (data) {
            $parent.hide("fast");
        });
    });
    
    //add list
    $("body").delegate(".addList","click",function () {
        var $this = $(this);
        $.post("user/addlist/id/" + $(".innerButtons").attr("movie-id") + '/title/' + $(".imtListAdd input[type=text]").val(), function (data) {
            if(data) {
            $(".listItems").prepend(data);
            $(".listItems").find("span.selected").removeClass("selected");
            $(".listItems > div:first > span").addClass("selected");
            $(".add-to-list > img").attr("src","images/checkedW.png")
        } else {
            $("#login a").trigger("click");
        }
        });
    });
    
    
    //add movie to list
    $("body").delegate(".listItems .imtList","click",function () {

        var $this = $(this);
        if( $this.find("span").hasClass("selected")) {
            
        
 
        $.post("user/removefromlist/movie_id/" + $(".innerButtons").attr("movie-id"), function (data) {
            if (data == "1") {
                $this.find("span").removeClass("selected");
                $(".add-to-list > img").attr("src","images/add-to-list.png")
           }
        });
        
        
        } else {
              $.post("user/addmovietolist/movie_id/" + $(".innerButtons").attr("movie-id") + '/list_id/' + $(this).attr("data-id"), function (data) {
            
            if (data == "1")
                $(".listItems").find("span.selected").removeClass("selected");
                $this.find("span").addClass("selected");
                $(".add-to-list > img").attr("src","images/checkedW.png")
        });
        }
    });
    
      $("body").delegate(".item-remove-from-list","click",function(){
     
        var id      = $(this).attr("movie-id");
        var self    = $(this);
        $.post("user/removefromlist/movie_id/" + id, function (data) {
            if (data == "1") {
                self.parent().hide("slow");
                $(".CountAllVap").html( parseInt($(".CountAllVap").text()) - 1 );
           }
        });
    });

    //add to watch list
    $("body").delegate(".add-to-watchlist:not(.watchlist-btn)","click",function () {
        
        var $this = $(this);
        $.post("user/addtowatchlist/movie_id/ "+ $(".innerButtons").attr("movie-id"), function (data) {
           
            if (data == "1") {
                $this.removeClass("add-to-watchlist").addClass("movie-remove-from-watchlist");
                $this.find("img").attr("src","images/checkedW.png");
                
            } else {
               $(".login").trigger("click");
            }
        });
    });
    
    $("body").delegate(".add-to-watchlist.watchlist-btn","click",function(){
        var id      = $(this).attr("movie-id");
        var self    = $(this);
        
        
        $.post("user/addtowatchlist/movie_id/ "+ id, function (data) {
            
            if (data == "1") {
                   self.removeClass("add-to-watchlist").addClass("remove-from-watchlist");
                   self.find("a").html("remove");
            } else {
               $(".login").trigger("click");
            }
        });
        
    });
    
    
    
    
    
    $("body").delegate(".remove-from-watchlist.watchlist-btn","click",function(){
        var id      = $(this).attr("movie-id");
        var self    = $(this);
        
        
        $.post("user/removefromwatchlist/movie_id/ "+ id, function (data) {
          
            if (data == "1") {
                   self.removeClass("remove-from-watchlist").addClass("add-to-watchlist");
                   self.find("a").html("watchlist");
            }
        });
        
    });

    //remove from watch list
    $("body").delegate(".movie-remove-from-watchlist","click",function () {
        var $this = $(this);
        $.post("user/removefromwatchlist/movie_id/" + $(".innerButtons").attr("movie-id"), function (data) {
            if (data == "1") {
               $this.removeClass("movie-remove-from-watchlist").addClass("add-to-watchlist");
               $this.find("img").attr("src","images/eyes.png");
           }
        });
    });
    
    
    $("body").delegate(".item-remove-from-watchlist","click",function(){
     	
		var self    = $(this);
        var id      = self.attr("movie-id");
       

        $.post("user/removefromwatchlist/movie_id/" + id, function (data) {
            if (data == "1") {
                self.parent().hide("slow");
                $(".CountAllVap").html( parseInt($(".CountAllVap").text()) - 1 );
           }
        });
		return false;
    });

	/*****istoriidan amogdeba******/
	$("body").delegate(".remove_history","click",function(){
    	var self    = $(this);
        var id      = self.attr("movie-id");
        
		self.parent().hide("slow");
        $.post("user/removefromhistory/movie_id/" + id, function (data) {
            if (data == "1") {
				self.parent().remove();
           }
        });
		
    });
	
	
	
	/*****istoriidan amogdeba******/
	$("body").delegate(".remove_subscribe","click",function(){
     
        var id      = $(this).attr("movie-id");
        var self    = $(this);
		self.parent().hide("slow");
        $.post("movies/removesubscribe/movie_id/" + id, function (data) {
            if (data == "1") {
				self.parent().remove();
           }
        });
		
    });
	
	
	$("body").delegate(".item-remove-from-subscribe","click",function(){
     
        var id      = $(this).attr("movie-id");
        var self    = $(this);
        $.post("movies/removesubscribe/movie_id/" + id, function (data) {
            if (data == "1") {
                self.parent().hide("slow");
                $(".CountAllVap").html( parseInt($(".CountAllVap").text()) - 1 );
           }
        });
    });
	
	
	$("body").delegate(".remove_watchlater","click",function(){
     
        var id      = $(this).attr("movie-id");
        var self    = $(this);
        $.post("user/removefromwatchlist/movie_id/" + id, function (data) {
            if (data == "1") {
                self.parent().hide("slow");
                $(".CountAllVap").html( parseInt($(".CountAllVap").text()) - 1 );
           }
        });
    });
	
	
	
	$("body").delegate(".lang-sort","click",function(){
		var lang;
		var dacherili = $(this).data('value').toString();
		$(".lang-sort.active").removeClass("active");
		if($(this).hasClass("active")){
			alert("zd zdg ");
			$(this).removeClass("active");
		}else{
			$(this).addClass("active");
		}
		var movies = $('div.movie-element');
		$("div.movie-element").each(function( index ) {
			lang=$( this ).data("langs").toString().split(',');
			for (var i = 0; i < lang.length; i++){
				if(dacherili==lang[i]){
					$( this ).show( "slow");
					return true;
				}else{
					$( this ).hide( "slow");
				}
			}
		});
		return false;
    });
	
	$("body").delegate(".lang-sort.active","click",function(){
		var lang;
		var dacherili = $(this).data('value').toString();
		$(".lang-sort.active").removeClass("active");
		
		var movies = $('div.movie-element');
		$("div.movie-element").each(function( index ) {
			lang=$( this ).data("langs").toString().split(',');
			for (var i = 0; i < lang.length; i++){
				if(dacherili==lang[i]){
					$( this ).show( "slow");
					return true;
				}else{
					$( this ).show( "slow");
				}
			}
		});
		return false;
    });
	
	
	
});


	function subscribe(movie){
		var subs= $(".subscribe ").data("sub"); 
		var posti;
		if(subs==0){posti="movies/addsubscribe/movie_id/";}else
		if(subs==1){posti="movies/removesubscribe/movie_id/";}
		var self    = $(this);
		$.post(posti + movie, function (data) {
			if (data == "1") {
				if ($(".subscribe").hasClass("active")) {
					$(".subscribe").removeClass( "active" );
					$(".subscribe").data("sub","0");
					$(".subscribe").attr('data-sub','0');
				}else
				if (!$(".subscribe").hasClass("active")) {
					$(".subscribe").addClass( "active" );
					$(".subscribe").data("sub","1");
					$(".subscribe").attr('data-sub','1');
				}
			}
			else {
               $(".login").trigger("click");
            }
		});
	}
	
	

	
	
	
var siteUrl = "http://peliculas.is";
var staticUrl = "http://peliculas.is";
	
	
	
	
function openVideo(video,item) {
	
var $html = $(video);    
var str = $html.prop('outerHTML');
$('.videoView').html('');
	$('#videoInnerLoader.active').children('.videoView').next('div').remove();
	//$('#videoInnerLoader.active').children('.videoView').nextAll('.commentFb').remove();
	$('#videoInnerLoader.active').children('.videoView').nextAll('.clear').remove();
	$('#videoInnerLoader.active').children('.playerCont').html(' ');
	$('#videoInnerLoader.active').removeClass('active').hide();
	$('.smallBlock.active').children('.arrow').hide();
	var itemParent = $(item).parent('.smallBlock');
	var Parentarrow = $(item).nextAll('.arrow');
	var vidoContainer = $(itemParent).nextAll('#videoInnerLoader').first();
	var itm = $(itemParent).attr('data-indx');
	var isActive = $(itemParent).hasClass('active');
	$('.smallBlock.active').removeClass('active');
	var videoTitleS =  $(itemParent).children('.title_geo').html();;
	var videoViewS  =  $(itemParent).children('.title_eng').html()
	if(isActive){return false;}
	$(itemParent).children('.arrow').show();
	//$(vidoContainer).children('.videoTitle').children('span').html(videoTitleS)
	$(vidoContainer).children('.videoView').html(str);


	vidoContainer.addClass('active').show();
	itemParent.addClass('active');
	$.get("vides/view/id/13");
	/*

	var url = siteUrl+'/videos?video_id='+movie_id
	$(vidoContainer).children('.social').children('.fb-like').attr('data-href',url)
	$(vidoContainer).children('.commentFb').children('.fb-comments').attr('data-href',url)
	FB.XFBML.parse();
	*/

}
	
	
	function closeVideo(index) {
		$('#videoInnerLoader.active').children('.videoView').next('div').remove()
		//$('#videoInnerLoader.active').children('.videoView').nextAll('.commentFb').remove()
		$('#videoInnerLoader.active').children('.videoView').nextAll('.clear').remove()
		//$('#videoInnerLoader.active').children('.playerCont').html(' ')
		$('.videoView').html('');
		$('#videoInnerLoader.active').removeClass('active').hide()
		$('.smallBlock.active').children('.arrow').hide()
		$('.smallBlock.active').removeClass('active')
		
	}
	
	

	
	
	
	
	/*
function fillSliderInfo($cont, data){
	var imgInfo = JSON.parse(data.trim());
	$cont.html('<div class="x-slider-img-title">' + imgInfo[0]["title"] + '</div>'+
				'<div class="x-slider-img-descr">' + imgInfo[0]["description"] + '</div>'+
				'<div id="social">'+
                  '<div id="fb-comments">'+
                   '  <div class="fb-like"  style="vertical-align: top;margin-top:0;padding-right:5px" data-href="" data-layout="button_count"  data-send="false" data-share="true" data-width="120" data-layout="button_count" data-show-faces="false"></div>'+
                    
                  '</div>'+
               '</div>'+
				'<div id="fb-comments">' +
         			'<div class="title">áƒ™áƒáƒ›áƒ”áƒœáƒ¢áƒáƒ áƒ”áƒ‘áƒ˜</div>' +
            		'<div class="fb-comments" data-num-posts="50"  data-href="' +location.href + '" data-width="100%"></div>' +
         		'</div>');
				
		/ *$("#fb-comments .fb-like").attr('data-href', 'http://adjaranet.com/XPhotos/main?photo='+ imgInfo[0]["id"]/*location.href* /)
		$("#fb-comments .fb-comments").attr('data-href','http://adjaranet.com/XPhotos/main?photo='+ imgInfo[0]["id"])
		$("#fb-comments .fb-share").attr('href','http://adjaranet.com/XPhotos/main?photo='+ imgInfo[0]["id"])
		FB.XFBML.parse()* /
}
*/


$(document).ready(function () {

$('body').on('click', '.x-participant-cont .x-main-slider-next, .x-participant-cont .x-main-slider-prev', function(){
	$cont = $(this).parent().find('.x-participant-wrapperr');
	console.log($cont);
	console.log($cont.css('left'));
	if ($cont.css('left') == '0px') {
		$cont.animate({'left':"-491px"});
	}else{
		$cont.animate({'left':"0px"});
	};
});




$('body').on('click', '.x-img', function(){

	if($('#x-overlay').length == 0){
		$overlay = $('<div id="x-overlay"></div>');
		$('body').append($overlay);
		$overlay.animate({"opacity":1},200);
	}
	else{
		$overlay = $('#x-overlay');
	}
	imgID = $(this).attr('data-image');
	imgindex = $(this).attr('data-index');
	//var hrrr = window.location.href.split('/main?photo=');
	//history.pushState({}, '', hrrr[0] + '/main?photo=' + imgID);
	$img = 	$('<img id="x-prevew-img" src="'+imgID+'" />');
	$cont = $('<div id="x-prevew-cont" data-index="'+imgindex+'" data-id="'+imgID+'"></div>');
	$prevbtn = $('<div id="x-prevew-prev"><img  src="/public/images/x-slider-prev.png"/></div>');
	$nextbtn = $('<div id="x-prevew-next"><img src="/public/images/x-slider-next.png"/></div>');
	$info = $('<div id="x-slider-info"></div>');
	$cont.append($img).append($prevbtn).append($nextbtn).append('<img id="x-prevew-close" src="/public/images/x-slider-close.png"/>').append($info);
/*	$.ajax( "http://adjaranet.com/Search/getPhotoData?ajax=1&id=" + imgID )
	  .done(function(data) {
	  	fillSliderInfo($info, data);
	  });*/
	$overlay.html($cont);
	$img.load( function(){
		$prevbtn.find('img').animate({"margin-top":( ($img.height() - 175) /2 )});
		$nextbtn.find('img').animate({"margin-top":( ($img.height() - 175) /2 )});
	});	

});

$('body').on('click', "#x-prevew-close", function(){
	$('#x-overlay').animate({"opacity":0}, function(){
		$(this).remove();
	})
});

$('body').on('click', "#x-prevew-next, #x-prevew-prev, #x-prevew-img", function(){
	$cont = $(this).parent();
	$this = $(this);
	$('#x-prevew-img').animate({"opacity":0} , 100 , function(){
		$oldImg = $(this);		
		var indexdata =$cont.attr('data-index');
		var new_image =$cont.attr('data-id');

		var nextindex =+(indexdata) + 1;
			new_image =$('#movies').find('[data-id="'+nextindex+'"]').attr("src");
		if (typeof nextindex =="undefined") {
			nextindex = 1;
			new_image =$('#movies').find('[data-id="'+nextindex+'"]').attr("src");
		};
		if ($this.is('#x-prevew-prev')) {
			nextindex =+(indexdata) - 1;
				new_image =$('#movies').find('[data-id="'+nextindex+'"]').attr("src");
			if (typeof nextindex == "undefined" ) {
				nextindex = 1;
				new_image =$('#movies').find('[data-id="'+nextindex+'"]').attr("src");
			};
		};
		
		if (new_image || typeof new_image == 'undefined' || new_image==null) {
					$('#x-overlay').animate({"opacity":0}, function(){
						$(this).remove();
					})
				}

		$img = 	$('<img id="x-prevew-img" src="'+ new_image +'" />');
		$cont.attr('data-index', nextindex);
		$cont.attr('data-id',new_image);

		$img.load( function(){
			$("#x-prevew-img").remove();
			$cont.find('#x-slider-info').before($img);
			$prevbtn.find('img').animate({"margin-top":( ($img.height() - 175) /2 )});
			$nextbtn.find('img').animate({"margin-top":( ($img.height() - 175) /2 )});
		});
	})
});


$( "body" ).on('click', '#x-overlay', function( event ) {
  if($(event.target).is('#x-overlay')){
  	$('#x-overlay').animate({'opacity':0}, 100, function(){
  		$(this).remove();
  	})
  }
});


$( "body" ).keydown(function(e){
	 var code = e.keyCode || e.which;
    if (code == 39) {
        $('#x-prevew-next').click();
    }
    else if (code == 37) {
        $('#x-prevew-prev').click();
    } 
});

	
	
	

	
});	
	
	
	
	