var site_host = top.location.host;
if (site_host.indexOf("www", 0) != -1) {
	top.location = "http://"+site_host.replace("www.", "");
}
var siteHashUrl = false;

var PlaingSoundtrackIndex = 0;

// var tabConfig = {

// 	moviesBlock : [ {
// 		imgName : langs.top_block_1,

// 		url : 'Movies/getMoviesForBlock?type=top&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	}, {
// 		imgName : langs.top_block_2,

// 		url : 'Movies/getMoviesForBlock?type=coming_soon&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	}, {
// 		imgName : langs.top_block_3,

// 		url : 'Movies/getMoviesForBlock?type=just_added&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	} ],

// 	moviesViewBlock : [ {
// 		imgName : langs.top_block_1,

// 		url : 'Movies/getMoviesForViewBlock/top/1/1?ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	}, {
// 		imgName : langs.top_block_2,

// 		url : 'Movies/getMoviesForViewBlock/coming_soon/1/1?ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	}, {
// 		imgName : langs.top_block_3,

// 		url : 'Movies/getMoviesForViewBlock/just_added/1/1?ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"

// 	} ],
	
// 	filesBlock : [ {
// 		imgName : langs.bottom_block_1,

// 		url : 'Movies/getMoviesFilesForBlock?type=trailers&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.bottom_block_2,

// 		url : 'Movies/getMoviesFilesForBlock?type=soundtracks&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.bottom_block_3,

// 		url : 'Movies/getMoviesFilesForBlock?type=posters&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.bottom_block_4,

// 		url : 'Movies/getMoviesFilesForBlock?type=wallpapers&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.bottom_block_5,

// 		url : 'Movies/getMoviesFilesForBlock?type=photos&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	} ],
    
//     viewBlock : [ {
//     	imgName: langs.movie_view_block,

// 		url : 'Movies/getMoviesBlockinview?type=castellano&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.movie_view_block_2,

// 		url : 'Movies/getMoviesBlockinview?type=latino&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.movie_view_block_3,

// 		url : 'Movies/getMoviesBlockinview?type=vos&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.movie_view_block_4,

// 		url : 'Movies/getMoviesBlockinview?type=similar&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	} ],
    
//     serialBlock : [ {
//         imgName: langs.serial_view_block,

// 		url : 'Movies/getSerialsFilesForBlock?type=top&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	}, {
// 		imgName : langs.serial_view_block_2,

// 		url : 'Movies/getSerialsFilesForBlock?type=just&ajax=1',

// 		element : ".movie-blocks",

// 		contentElement : ".movies-block-content"
// 	} ],


// 	downloadBlock : [ {
// 		imgName : 'hdr_downloads_tab_1.jpg',

// 		url : 'Movies/getViewBlock?ajax=1&type=1',

// 		element : ".download-blocks",

// 		contentElement : ".top-movies-main"
// 	}, {
// 		imgName : 'hdr_downloads_tab_2.jpg',

// 		url : 'Movies/getViewBlock?ajax=1&type=2',

// 		element : ".download-blocks",

// 		contentElement : ".top-movies-main"
// 	}, {
// 		imgName : 'hdr_downloads_tab_3.jpg',

// 		url : 'Movies/getViewBlock?ajax=1&type=3',

// 		element : ".download-blocks",

// 		contentElement : ".top-movies-main"
// 	}, {
// 		imgName : 'hdr_downloads_tab_4.jpg',

// 		url : 'Movies/getViewBlock?ajax=1&type=4',

// 		element : ".download-blocks",

// 		contentElement : ".top-movies-main"
// 	} ]

// };


var paginationImages = [ {

	imgName : 'scroll_box_bottom_1_728x31.gif'

}, {

	imgName : 'scroll_box_bottom_2_728x31.gif'

}, {

	imgName : 'scroll_box_bottom_3_728x31.gif'

}, {

	imgName : 'scroll_box_bottom_4_728x31.gif'

}, {

	imgName : 'scroll_box_bottom_5_728x31.gif'

} ];

var paginationImages2 = [ {

    imgName : 'scroll_box_bottom_1_728x31-red.gif'

}, {

	imgName : 'scroll_box_bottom_2_728x31-red.gif'

}, {

	imgName : 'scroll_box_bottom_3_728x31-red.gif'

}, {

	imgName : 'scroll_box_bottom_4_728x31-red.gif'

}, {

	imgName : 'scroll_box_bottom_5_728x31-red.gif'

} ];

$(document).ready(function() {

	url = $(location).attr("hash");
	
	$("#featured-slider").show();
	$(".top-movies").show();
	$(".top-advertisements").hide();
	$(".main-advertisements").show();
	$(".movies-advertisements").hide();
	
	if (!url) {
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").show();
		$(".left-genre").hide();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").show();
		$(".movies-advertisements").hide();
	} else if(url.indexOf('Videos') > -1){
        $(".left-block").hide();
        $(".center-main .content").css("width", "990px");
        $(".top-movies").hide();
        $(".main-advertisements").hide();
        $(".movies-advertisements").hide();
    } else if(url.indexOf('fullView') > -1){
		$(".left-block").show();
		$(".center-main .content").css("width", "728px");
		
		$(".left-block-peoples").show();
		$(".left-genre").hide();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	} else if(url.indexOf('movies') > -1 || url.indexOf('Movies') > -1){
		$(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").show();		
	} else if(url.indexOf('news') == -1 && url.indexOf('News') == -1){
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	} else{
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").show();
		$(".box-office-title").hide();
		$(".box-office-main").hide();
		$(".top-movies-title").hide();
		$(".top-movies-main").hide();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	}
	
	getContent(url);

	setTimeout(function() {
		//addListeners();
	}, 2000);
	
	$("body").on("click", ".info-mini-arrow", function(){
		$(this).parent().next().show();
		$(this).parent().hide();
	});
	
	$("body").on("click", ".info-full-arrow", function(){
		$(this).parent().prev().show();
		$(this).parent().hide();
	});
	

	
	var scrollCelebs = true;
	

	$("body").on("click", ".people-left-arrow", function() {
		var left = parseInt($("#lyr5").css("left"));

		if (left < 0 && scrollCelebs) {
			scrollCelebs = false;
			$("#lyr5").stop().animate({
				left : (left + 146)
			}, "slow", function(){scrollCelebs = true;});
		} else if(scrollCelebs) {
			scrollCelebs = false;
			$("#lyr5").stop().animate({
				left : (0)
			}, "slow", function(){scrollCelebs = true;});
		}
	});



	$("body").on("click", ".people-right-arrow", function() {
		
		var left = parseInt($("#lyr5").css("left"));

		if (left > -1300 && scrollCelebs) {
			scrollCelebs = false;
			$("#lyr5").stop().animate({
				left : (left - 146)
			}, "slow", function(){scrollCelebs = true;});
		}

	});

	$("body").on("click", ".play-video", function() {
		var videoCode = siteUrl + '/' + $(this).attr("video-url");

		var object = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width='100%' height='100%' id='single1' name='single1'><param name='movie' value='"
				+ siteUrl
				+ "/js/jwplayer/player.swf'><param name='allowfullscreen' value='true'><param name='allowscriptaccess' value='always'><param name='wmode' value='opaque'><param name='flashvars' value='file="
				+ videoCode
				+ "&autostart=true'><embed type='application/x-shockwave-flash' id='single2' name='single2' src='"
				+ siteUrl
				+ "/js/jwplayer/player.swf' width='100%' height='100%' bgcolor='#000000' allowscriptaccess='always' allowfullscreen='true' wmode='opaque' flashvars='file="
				+ videoCode + "&autostart=true' /></object>";

		$(".online-player").html(object);

	});
	
	starsEvents();
	gomPlayerEvents();
	
	$("#txt_search").AutoComplete(siteUrl + "/Search/autocomplete/?text=");
	
	$(".search-button").click(function(){
		$(this).getParent("form").submit();
	});
	
	$("body").on("click", ".icons .seen", function(){
		var movies_seen = getCookie("movies_seen");
		var movieId = $(".seen").getParent(".movie-tabs").getAttr("rel");
		
		movies_seen = movies_seen == undefined ? '' : movies_seen;
		
		if( $(this).hasClass("sel") ){
			$(this).removeClass("sel");
			
			movies_seen = movies_seen.replace(movieId + ",", "");
		} else{
			$(this).addClass("sel");
			
			movies_seen += movieId + ",";
		}
		
		createCookie("movies_seen", movies_seen, 700);
	});
	
	$("body").on("click", ".icons .rec", function(){
		var movies_like = getCookie("movies_like");
		var movieId = $(".seen").getParent(".movie-tabs").getAttr("rel");
		var likeCount = parseInt( $(this).children(".num").html() );
		
		movies_like = movies_like == undefined ? '' : movies_like;
		
		if( $(this).hasClass("sel") ){
			return;
			$(this).removeClass("sel");
			
			movies_like = movies_like.replace(movieId + ",", "");
			likeCount -= 1;
		} else{
			$(this).addClass("sel");
			
			movies_like += movieId + ",";
			likeCount += 1;
			
			$.get(siteUrl + "/Movies/addLike/" + movieId);
		}
		
		createCookie("movies_like", movies_like, 700);
		$(this).children(".num").html( likeCount );
	});
	
	$("body").on("click", ".icons_left .warn", function(){
		
		if( $(this).hasClass("sel") ){
			$(this).removeClass("sel");
			
			$(".showpop").hide();
		} else{
			$(this).addClass("sel");
			
			$(".showpop").show();
		}
		
		//<div class="tit">Reportar problema</div><div class="container"><div id="report" class="report">El reporte ha sido enviado</div></div>
	});
	
	$("body").append("<div class='lightoverlay'></div>");
	
	var docHeight = $(document).height() + "px";
	var docWidth = $(document).width() + "px";
	$('.lightoverlay').css({display: "none", height: docHeight, width: docWidth, opacity: "0"});
	$(".light-overlay-box").css({position: "relative", zIndex: "9997"});
	
	$("body").on("click", ".bg_light", function(){
		var me = this;
		var method = parseInt( $(this).getAttr("method") );
		var docHeight = $(document).height() + "px";
		var docWidth = $(document).width() + "px";
		
		$('.lightoverlay').css({height: docHeight});
		
		if(!method || method == 0){
			$(".lightoverlay").css({display: "block"}).animate({opacity: "0.7"}, 400);
			method = 1;
		} else if(method == 1){
			$(".lightoverlay").animate({opacity: "1"}, 400);
			method = 2;
		} else if(method == 2){
			$(".lightoverlay").css({"background-color": "#000000"});
			
			method = 3;
		} else if(method == 3){
			$(".lightoverlay").css("background-color", "");
			$(".lightoverlay").animate({opacity: "0"}, 400, function(){
				$(this).css({display: "none"});
				return false;
			});
			
			method = 0;
		}
		
		$(me).attr("method", method);
	});
	
	topMoviesEvents();
	filterEvents();
	
	setTimeout(function(){
	    return;
		var promoMute = 1;//getCookie("promo_mute");
		
		if(promoMute == undefined){
			createCookie("promo_mute", "1", 700);
			promoMute = "1";
		}
		
		if(promoMute == "1"){
			SetAdvSnd(1,6);
		} else{
			SetAdvSnd(0,6);
		}
	}, 1000);
});

$(window).bind('hashchange', function(e) {

	url = $(location).attr("hash");

    $(".top-movies").show();
	$(".main-advertisements").show();
	$(".movies-advertisements").hide();

	if (!url) {
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").show();
		$(".left-genre").hide();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").show();
		$(".movies-advertisements").hide();
	} else if(url.indexOf('Videos') > -1){
        $(".left-block").hide();
        $(".center-main .content").css("width", "990px");
        $(".top-movies").hide();
        $(".main-advertisements").hide();
        $(".movies-advertisements").hide();
    } else if(url.indexOf('fullView') > -1){
		$(".left-block").show();
		$(".center-main .content").css("width", "728px");
		
		$(".left-block-peoples").show();
		$(".left-genre").hide();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	} else if(url.indexOf('movies') > -1 || url.indexOf('Movies') > -1){
		$(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").show();	
	} else if(url.indexOf('news') == -1 && url.indexOf('News') == -1){
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").hide();
		$(".box-office-title").show();
		$(".box-office-main").show();
		$(".top-movies-title").show();
		$(".top-movies-main").show();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	} else{	
	    $(".left-block").show();
	    $(".center-main .content").css("width", "728px");
	    
		$(".left-block-peoples").hide();
		$(".left-genre").show();
		$(".left-news").show();
		$(".box-office-title").hide();
		$(".box-office-main").hide();
		$(".top-movies-title").hide();
		$(".top-movies-main").hide();
		$(".main-advertisements").hide();
		$(".movies-advertisements").hide();
	}

	getContent(url);
});

var blockMoreVideos = false;
$(window).scroll(function() {
    var nearBottomHeight = 200; 
    
    if($(window).scrollTop() + $(window).height() > $(document).height() - nearBottomHeight) {
        if(!blockMoreVideos)
            loadMoreVideos();
    }
});

function submitMovieProblemForm( element ){
	
	var form = $(element)[0];
	
	var movieId = $(".movie-tabs").getAttr("rel");
	var text = $(form).find("[name=comentario]").val();
	var type = $(form).find("[name=tipor]").val();
	var subType = $(form).find("[name=subtipo]").val();
	var email = $(form).find("[name=email]").val();
	var link = siteUrl + "/" + $(location).attr("hash");
	link = link.replace("#", "");
	
	if(!text || !type || !movieId){
		return;
	}
	
	$.get(siteUrl + "/MoviesProblems/addProblem/?id=" + movieId + "&text=" + text + "&type=" + type + "&subType=" + subType + "&link=" + link+"&email="+email);
	
	$(".showpop").children(".wrap").html('<div class="tit">Reportar problema</div><div class="container"><div id="report" class="report">El reporte ha sido enviado</div></div>');
	$(".showpop").css({
		"bottom": "47px",
		"height": "78px"
	});
}

function updateTipo(t) {
	if (t.value=='sub') {
		$('#subtipo').show();
	} else {
		$('#subtipo').hide();
	}
}

function checkMovieSeen(){
	var movies_seen = getCookie("movies_seen");
	var movieId = $(".movie-tabs").getAttr("rel");
	
	if( !movies_seen || !movieId ){
		return;
	}
	
	if( movies_seen.indexOf( movieId+"," ) > -1 ){
		$(".seen").addClass("sel");
	}
}

function checkMovieLike(){
	var movies_like = getCookie("movies_like");
	var movieId = $(".movie-tabs").getAttr("rel");
	
	if( !movies_like || !movieId ){
		return;
	}
	
	if( movies_like.indexOf( movieId+"," ) > -1 ){
		$(".rec").addClass("sel");
	}
}

function getContent(url) {

	if (url == siteHashUrl) {

		return false;

	}

	siteHashUrl = url;

	url = url.replace("#", "");

	if (!url) {

		url = "Home/getContent";

	}

	$(".content").html(
			"<center><img src='" + siteUrl + "/allmovies_images/loading.gif' /></center>");

	$.get(siteUrl + "/" + url + "?ajax=1", function(data) {
        _gaq.push(['_trackPageview', '/'+url]); 

		$(".content").html(data);

		var isFacebook = $(".content").find('.fb-comments');
		var document = window.document;
		var contentNode = $("body");
		if (isFacebook != undefined) {
			$("#fb-root").remove();
			
			setTimeout(function(){
				var scriptText = 'FB.XFBML.parse();';
				var scriptNode = document.createElement('script');
				scriptNode.appendChild(document.createTextNode(scriptText));
				contentNode.append(scriptNode);
			},100);			
		}
		
		selectMovieOnline();
		selectMovieDownoadLink();
		checkMovieSeen();
		checkMovieLike();
		buildTooltips();
	});

	$("html, body").animate({
		scrollTop : 0
	}, "slow");
	// window.scrollTo(0, 0);
}

var canChangeTab = true;

function changeTab(element, block, tabIndex) {
	
	if(!canChangeTab){
		return;
	}
	
	canChangeTab = false;
	
	var tab = tabConfig[block][tabIndex];
	console.log(arguments);
	console.log(tab);
	var imgSrc = tab.imgName;
	
	console.log(imgSrc);
	
	imgSrc = imgSrc.replace('allmovies_images/', '');
	imgSrc = siteUrl + "/allmovies_images/" + imgSrc;
	
	
	
	$(element).parent().prev().attr("src", imgSrc);

	paginationImage = $(element).parent().parent().next().next(".block-bottom")
			.children("img");

	var content = $(element).parent().parent().next(tab.contentElement);

	paginationImage.attr("page", "0");

	paginationImage.attr("src", siteUrl + "/allmovies_images/"
			+ paginationImages[0].imgName);

	$(element).parent().parent().attr("page", tab.url);

	var mainElement = tab.element;

	$.get(siteUrl + "/" + tab.url, function(data) {
		canChangeTab = true;
		var elementToHide = $(content).children(mainElement)[0];

		$(elementToHide).fadeOut(500, function() {
			$(content).html(data);

			//$(content).children(mainElement).hide();

			$(content).children(mainElement).show();

		});

	});

}


var canChangeTab3 = true;

function changeTab3(element, block, tabIndex) {
    
	if(!canChangeTab3){
		return;
	}
	
	canChangeTab3 = false;
	
	var tab = tabConfig[block][tabIndex];
	console.log(arguments);
	console.log(tab);
	var imgSrc = tab.imgName;
	
	console.log(imgSrc);
	
	imgSrc = imgSrc.replace('allmovies_images/', '');
	imgSrc = siteUrl + "/allmovies_images/" + imgSrc;
	
	
	
	$(element).parent().prev().attr("src", imgSrc);

	paginationImage2 = $(element).parent().parent().next().next(".block-bottom")
			.children("img");

	var content = $(element).parent().parent().next(tab.contentElement);

	paginationImage2.attr("page", "0");

	paginationImage2.attr("src", siteUrl + "/allmovies_images/"
			+ paginationImages2[0].imgName);

	$(element).parent().parent().attr("page", tab.url);

	var mainElement = tab.element;

	$.get(siteUrl + "/" + tab.url, function(data) {
		canChangeTab3 = true;
		var elementToHide = $(content).children(mainElement)[0];

		$(elementToHide).fadeOut(500, function() {
			$(content).html(data);

			//$(content).children(mainElement).hide();

			$(content).children(mainElement).show();

		});

	});

}

var canChangeTab2 = true;

function changeTab2(element, block, tabIndex, movieid) {
    
	if(!canChangeTab2){
		return;
	}
	
	canChangeTab2 = false;
	
	var tab = tabConfig[block][tabIndex];
	console.log(arguments);
	console.log(tab);
	var imgSrc = tab.imgName;

	
	console.log(imgSrc);
	
	imgSrc = imgSrc.replace('allmovies_images/', '');
	imgSrc = siteUrl + "/allmovies_images/" + imgSrc;
	
	
	
	$(element).parent().prev().attr("src", imgSrc);

	paginationImage = $(element).parent().parent().next().next(".block-bottom")
			.children("img");

	var content = $(element).parent().parent().next(tab.contentElement);

	paginationImage.attr("page", "0");

	paginationImage.attr("src", siteUrl + "/allmovies_images/"
			+ paginationImages[0].imgName);

	$(element).parent().parent().attr("page", tab.url + "&movieid=" + movieid);

	var mainElement = tab.element;

	$.get(siteUrl + "/" + tab.url+ "&movieid=" + movieid, function(data) {
		canChangeTab2 = true;
		var elementToHide = $(content).children(mainElement)[0];

		$(elementToHide).fadeOut(500, function() {
			$(content).html(data);

			//$(content).children(mainElement).hide();

			$(content).children(mainElement).show();

		});

	});

}

function changeViewTab(element, block, tabIndex) {
	
	if(!canChangeTab){
		return;
	}
	
	canChangeTab = false;
	
	var tab = tabConfig[block][tabIndex];
	var imgSrc = tab.imgName;
	imgSrc = imgSrc.replace("allmovies_images/", "");
	imgSrc = siteUrl + "/allmovies_images/" + imgSrc;
	
	$(element).parent().prev().attr("src", imgSrc);

	var content = $(element).parent().parent().next(tab.contentElement);

	$(element).parent().parent().attr("page", tab.url);

	var mainElement = tab.element;

	$.get(siteUrl + "/" + tab.url, function(data) {
		canChangeTab = true;
		var elementToHide = $(content).children(mainElement)[0];

		$(elementToHide).fadeOut(500, function() {
			$(content).html(data);

			//$(content).children(mainElement).hide();

			$(content).children(mainElement).show();

		});

	});

}

var canChangePage = true;

function changePage(element, page) {
	
	if(!canChangePage){
		return;
	}
	
	var paginationImage = $(element).parent().prev(".block-pagination");

	var url = $(element).parent().parent().prev().prev(".block-title").attr(
			"page");

	var currentPage = paginationImage.attr("page");

	var content = $(element).parent().parent().prev(".movies-block-content");

	if ($(content).children(".movie-blocks").size() > 1) {

		return false;

	}

	if (!paginationImage || !url) {

		return false;

	}

	if (!page) {

		if (currentPage == 0) {

			return false;

		}

		currentPage--;

	} else {

		if (currentPage == 4) {

			return false;

		}

		currentPage++;

	}

	var pagination = paginationImages[currentPage];

	paginationImage.attr("page", currentPage);

	paginationImage.attr("src", siteUrl + "/allmovies_images/"
			+ pagination.imgName);

	canChangePage = false;
	$.get(siteUrl + "/" + url + "&page=" + currentPage, function(data) {
		canChangePage = true;
		$(content).append(data);

		$(content).children(".movie-blocks:last").css({

			left : (!page) ? "-720px" : "720px"

		});

		$(content).children(".movie-blocks:last").animate({
			left : 0
		}, 500);

		$(content).children(".movie-blocks:first").animate({

			left : (!page) ? 720 : -720

		}, 500, function() {
			$(content).children(".movie-blocks:first").remove();
		});

	});

}


var canChangePage2 = true;

function changePage2(element, page) {
    
	if(!canChangePage2){
		return;
	}
	
	var paginationImage2 = $(element).parent().prev(".block-pagination");

	var url = $(element).parent().parent().prev().prev(".block-title").attr(
			"page");

	var currentPage = paginationImage2.attr("page");

	var content = $(element).parent().parent().prev(".movies-block-content");

	if ($(content).children(".movie-blocks").size() > 1) {

		return false;

	}

	if (!paginationImage2 || !url) {

		return false;

	}

	if (!page) {

		if (currentPage == 0) {

			return false;

		}

		currentPage--;

	} else {

		if (currentPage == 4) {

			return false;

		}

		currentPage++;

	}

	var pagination = paginationImages2[currentPage];

	paginationImage2.attr("page", currentPage);

	paginationImage2.attr("src", siteUrl + "/allmovies_images/"
			+ pagination.imgName);

	canChangePage2 = false;
	$.get(siteUrl + "/" + url + "&page=" + currentPage, function(data) {
		canChangePage2 = true;
		$(content).append(data);

		$(content).children(".movie-blocks:last").css({

			left : (!page) ? "-720px" : "720px"

		});

		$(content).children(".movie-blocks:last").animate({
			left : 0
		}, 500);

		$(content).children(".movie-blocks:first").animate({

			left : (!page) ? 720 : -720

		}, 500, function() {
			$(content).children(".movie-blocks:first").remove();
		});

	});

}

function Redirect(item_type, item_id, url) {

	if (item_type == 0) {
		document.location = url;
	} else {
		window.open(url, "");
	}
}

function SetAdvSnd(val, mt) {

	if(val == 0){
		//return;
	}

	var mute = true;
	
	var player = $("#player1");
	player = player[0];

	mute = mute ? false : true;
	
	console.log(val);
	
	createCookie("promo_mute", val, 700);
	
	if (player) {
		console.log(val == 1);
		player.sendEvent("MUTE", val == 1);
		
		setTimeout(function(){
			player.sendEvent("MUTE", val == 1);
		}, 1000);
		
		if (!val) {
			$("#PlayerSndCtrl")
					.html(
							"<img src='"
									+ siteUrl
									+ "/allmovies_images/snd_on_22x15.png' title='Sound On' onclick='SetAdvSnd(1,"
									+ mt
									+ ")' style='width:22px; height:15px; margin-top:"
									+ mt
									+ "px; margin-right:28px; cursor:pointer;'>");
		} else {
			$("#PlayerSndCtrl")
					.html(
							"<img src='"
									+ siteUrl
									+ "/allmovies_images/snd_off_22x15.png' title='Sound Off' onclick='SetAdvSnd(0,"
									+ mt
									+ ")' style='width:22px; height:15px; margin-top:"
									+ mt
									+ "px; margin-right:28px; cursor:pointer;'>");
		}
	}
}

function addListeners() {
	
	var player = $("#player1");
	player = player[0];
	
	if(!player){
		return;
	}
	
	var plst = null;
	plst = player.getPlaylist();
	
	if(plst == null){
		setTimeout("addListeners()", 1000);
	}
	
	$.each(plst, function(index, object) {
		object.index = index;
	});
	
	itemListener(plst[0]);

	if (player) {
		player.addControllerListener("ITEM", "itemListener");
	} else {
		setTimeout("addListeners()", 500);
	}
}

function itemListener(obj) {
	var player = $("#player1");
	player = player[0];
	
	var currentItem = 100;
	if (obj.index != currentItem) {
		currentItem = obj.index;
		var tmp = $("#PlayerMovieTitle");
		if (tmp) {

			var plst = null;
			plst = player.getPlaylist();

			if (plst) {

				var currentObject = plst[currentItem];

				var arrData = currentObject.title.split("|");
				
				var buf = "";
				if (arrData[0] == '0') {

					buf += "<table align='center' cellspacing='0' cellpadding='0' border='0'><tr>";
					buf += "<td class='rmmname' onclick=\"Redirect(0,"
							+ arrData[4] + ",'" + arrData[1] + "')\">"
							+ arrData[2] + " <span class='EN-11-AFAFAF'>("
							+ arrData[3] + ")</span></td>";
					buf += "</tr></table>";
					$("#tv_title")
							.attr(
									{
										src : ""
												+ siteUrl
												+ "/allmovies_images/title_recommended_movies_142x8.png"
									});
				} else {
					buf += "<table align='center' cellspacing='0' cellpadding='0' border='0'><tr>";
					buf += "<td class='rmmname' onclick=\"Redirect(1,"
							+ arrData[3] + ",'" + arrData[1] + "')\">"
							+ arrData[2] + "</td>";
					buf += "</tr></table>";
					$("#tv_title")
							.attr(
									{
										src : ""
												+ siteUrl
												+ "/allmovies_images/title_advertisement_142x8.png"
									});
				}

				tmp.html(buf);
			}
		}
	}
}



function starsEvents(){
	var src_array = [];
	
	$("body").on("mouseover", ".star", function() {

		var indx = $(this).attr("rel");

		src_array = [];

		$(".star").each(function() {
			var src = $(this).attr("src");
			src_array.push(src);
		});

		for (i = 0; i <= indx; i++) {
			$("#star_" + i).attr("src", siteUrl + "/allmovies_images/starA.gif");
		}

	});

	$("body").on("mouseout", ".star", function() {
		for (i = 0; i < 5; i++) {
			$("#star_" + i).attr("src", src_array[i]);
		}
	});

	$("body").on("click", ".star", function() {
		var link = $(this).parent().attr("rate_link");
		var id = $(this).parent().attr("related_id");
		var indx = $(this).attr("rel");
		
		var starElement = this;

		// Get Type
		var type = link.replace(siteUrl+'/','');
		type = type.replace("/rate",'');
		
		// Get Cookies
		var isAlreadyVoted = getCookie(type+"_"+id);
		
		if(isAlreadyVoted){
			$(starElement).parentsUntil(".vote-div").parent().html("<span style='color:red;'>Already voted!</span>");
			return;
		}
		
		$.get(link + "?ajax=1&id=" + id + "&vote=" + indx, function(data) {
			$(starElement).parentsUntil(".vote-div").parent().html(data);
		});
		
		createCookie(type+"_"+id, true, 1);	
	});
}



function createTrackPlayer(soundtrack_id, soundtrack_index, track_index,
		thePlayer, theFile) {
	
	if (PlaingSoundtrackIndex > -1) {
		swfobject.removeSWF(thePlayer);
		$("#TrackPlayerWrapper_" + soundtrack_index)
			.html("<div id='TrackPlayerPlaceholder_" + soundtrack_index	+ "'><a href=\"http://www.macromedia.com/go/getflashplayer\">Get the Flash Player</a> to see this player.</div>");
	}
	
	$.get(siteUrl+"/Soundtracks/setView?id="+soundtrack_id);
	
	var flashvars = {
		file : theFile,
		autostart : "true"
	}
	var params = {
		allowfullscreen : "false",
		allowscriptaccess : "always",
		Volume: 0
	}
	var attributes = {
		id : thePlayer,
		name : thePlayer
	}
	
	swfobject.embedSWF(siteUrl+"/promos/flvplayer_v4.2.swf", "TrackPlayerPlaceholder_"
			+ soundtrack_index, "524", "21", "9.0.115", false, flashvars,
			params, attributes);
	
	$("#tblSoundtrack_" + PlaingSoundtrackIndex + " tr:eq("
					+ PlaingTrackIndex + ")").css({
		background : "none"
	});
	PlaingSoundtrackIndex = soundtrack_index;
	PlaingTrackIndex = track_index;
	$(
			"#tblSoundtrack_" + PlaingSoundtrackIndex + " tr:eq("
					+ PlaingTrackIndex + ")").css({
		background : "#C1DEC0"
	});
}

function scrollToDiv(element){
	var element = $(element);
	
	if(!element){
		return false;
	}
	
	var position = $(element).position();
	
	$("html, body").animate({
		scrollTop : position.top-30
	}, "slow");
}

function getCookie(c_name)
{
    var i,x,y,ARRcookies=document.cookie.split(";");

    for (i=0;i<ARRcookies.length;i++)
    {
        x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
        y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
        x=x.replace(/^\s+|\s+$/g,"");
        if (x==c_name)
        {
            return unescape(y);
        }
     }
}

function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    } else {
        var expires = "";
    }
    document.cookie = name+"="+value+expires+"; path=/;";
}



function selectSeason( seasonElement ){
	$(".movie-season").removeClass("sel");
	$(seasonElement).addClass("sel");
	
	var season = $( seasonElement ).getAttr("data-id");
	
	var ids = [];
	$(".movie-season").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.online-menu ul').sbscroller("refresh");
	selectEpisode( $(".movie-episode[season="+season+"]:first") );
}

function selectEpisode( episodeElement ){
	$(".movie-episode").hide();
	$(".movie-episode").removeClass("sel");
	$(episodeElement).addClass("sel");
	
	var episode = $( episodeElement ).getAttr("data-id");
	
	var season = $(".movie-season.sel").getAttr("data-id") || 0;
	
	var ids = [];
	$(".movie-episode[season="+season+"]").show();
	$(".movie-episode[season="+season+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.online-menu ul').sbscroller("refresh");
	selectLanguage( $(".movie-audio[season="+season+"][episode="+episode+"]:first") );
}

function selectLanguage( audioElement ){
	$(".movie-audio").removeClass("sel");
	$(".movie-audio").hide();
	$(audioElement).addClass("sel");
	
	var languageId = $( audioElement ).getAttr("data-id");
	var season = $(".movie-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-audio[season="+season+"][episode="+episode+"]").show();
	
	var ids = [];
	$(".movie-audio[season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.online-menu ul').sbscroller("refresh");
	selectQuality( $(".movie-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]:first") );	
}

function selectQuality( qualityElement ){
	$(".movie-quality").removeClass("sel");
	$(".movie-quality").hide();
	
	$(qualityElement).addClass("sel");
	
	var languageId = $(".movie-audio.sel").getAttr("data-id");
	var season = $(".movie-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]").show();
	var quality = $(qualityElement).getAttr("data-id");
	
	var ids = [];
	$(".movie-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.online-menu ul').sbscroller("refresh");
	selectServer( $(".movie-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]:first") );
}

function selectServer( serverElement ){
	$(".movie-server").removeClass("sel");
	$(".movie-server").hide();
	
	$( serverElement ).addClass("sel");
	
	var languageId = $(".movie-audio.sel").getAttr("data-id");
	var quality = $(".movie-quality.sel").getAttr("data-id");
	var season = $(".movie-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]").show();
	
	var ids = [];
	$(".movie-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.online-menu ul').sbscroller("refresh");
}

function copyToClipboard()
{
	var txtObj = $("#gomlnk");
	var content = $(txtObj).val();

	txtObj.focus();
	txtObj.select();

	if (window.clipboardData && window.clipboardData.setData) {
		console.log(content);
		window.clipboardData.setData("Text", content);
		return true;
	}
	else {
		try { 
			netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"); 
		} 
		catch (e) { 
			return false;
		}
		
		var clipboard = Components.classes["@mozilla.org/widget/clipboard;1"].getService(); 
		if (clipboard) { 
			clipboard = clipboard.QueryInterface(Components.interfaces.nsIClipboard); 
		} 
		
		var transferable = Components.classes["@mozilla.org/widget/transferable;1"].createInstance(); 
		if (transferable) { 
			transferable = transferable.QueryInterface(Components.interfaces.nsITransferable); 
		}
		
		if (clipboard && transferable) { 
			var textObj = new Object(); 
			var textObj = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString); 
			if (textObj) { 
				textObj.data = content; 
				transferable.setTransferData("text/unicode", textObj, content.length*2); 
				var clipid=Components.interfaces.nsIClipboard; 
				clipboard.setData(transferable,null,clipid.kGlobalClipboard); 
				
				return true;
			} 
		}
		
		return false;
	}
}

function gomPlayerEvents(){
	
	$("body").on("click", ".gomplayer-link", function(){
		
		var lnk = $(this).getAttr("rel");
		
		var popupX = $(document).scrollLeft() + Math.round( $(window).width() / 2 ) - Math.round($("#gomdlgWrap").width() / 2 );
		var popupY = $(document).scrollTop() + Math.round( $(window).height() / 2 ) - Math.round($("#gomdlgWrap").height() / 2 );
		
		$("#gomdlgWrap")
			.css( {left: popupX + "px", top: popupY + "px" } )
			.fadeIn(400);
			//.draggable( { handle: "#gomdlgHdr", containment: "html", opacity: 0.8, cursor: "move"} );

		var txtObj = $("#gomlnk");
		txtObj.val(lnk);
		txtObj.focus();
		txtObj.select();
	});	
	
	$.clipboardReady(function(){

		$( "body" ).on("click", ".copy-to-clipboard", function(){

			$.clipboard( "You clicked on a link and copied this text!" );

			return false;

		});

	});
}

function buildTooltips(){
	$(".icons a, .icons_left a, .middle-icons a").qtip({
		delay: 50,
		position: {
	      corner: {
	         target: 'topMiddle',
	         tooltip: 'bottomMiddle'
	      }
		},
		style: { 
		      textAlign: 'center',
		      tip: 'bottomMiddle',
		      name: 'light', // Inherit the rest of the attributes from the preset dark style,
	    	  border: {
	    		  width: 1,
	    	      radius: 2
	    	  },
		   }
	});
}

grantToAnimate = true;

var disable_double_click = false;
function topMoviesEvents(){
	$(document).on("click", ".home-page-sliders .arrow.forward", function(){
		if (disable_double_click) return;
		disable_double_click = true;
		setTimeout(function () {
			disable_double_click = false;
		}, 200);
		var selector = $(".home-page-slides.horizontal");
		
		var activeItem = $(".home-page-slide-item.activePage")[0];
		var nextItem = $(activeItem).next()[0];

		if( nextItem == undefined ){
			$(selector).stop().animate({"left":"0px"}, "slow");
			$(".home-page-slide-item.activePage").removeClass("activePage");
			$(".home-page-slide-item:first").addClass("activePage");
			return;
		} 
		 
		var left = $(selector).position().left;
		
		$(selector).stop().animate({"left":left-970}, "slow");
		$(".home-page-slide-item.activePage").removeClass("activePage");
		$(nextItem).addClass("activePage");
	});
	
	$(document).on("click", ".movie-file .arrow.forward", function(){
		if (disable_double_click) return;
		disable_double_click = true;
		setTimeout(function () {
			disable_double_click = false;
		}, 200);
		console.log(grantToAnimate); 
		if(!grantToAnimate){
			return;
		}
		
		grantToAnimate = false;
		var selector = $(this).parent().children("div");
		
		var width = $(selector).children("div").width();
		var left = $(selector).scrollLeft();
		var offsetLeft = $(selector).offset().left;
		
		if( (offsetLeft+left) >= width ){
			$(selector).stop().animate({scrollLeft:0}, "slow", function(){grantToAnimate=true;});
			return;
		} 
		
		$(selector).stop().animate({scrollLeft:left+694}, "slow", function(){grantToAnimate=true;});
	});
	
	
	
	$(document).on("click", ".movie-file .arrow.back", function(){
		if (disable_double_click) return;
		disable_double_click = true;
		setTimeout(function () {
			disable_double_click = false;
		}, 200);
		if(!grantToAnimate){
			return;
		}
		
		grantToAnimate = false;
		
		var selector = $(this).parent().children("div");
		
		var width = $(selector).children("div").width();
		var left = $(selector).scrollLeft();
		var offsetLeft = $(selector).offset().left;

		if( left == 0){
			grantToAnimate = true;
			//$(selector).stop().animate({scrollLeft: offsetLeft}, "slow", function(){grantToAnimate=true;});
			return;
		} 
		
		var scLeft = left-694;
		scLeft = scLeft <= 100 ? 0  : (left-694);
		
		$(selector).stop().animate({scrollLeft:scLeft}, "slow", function(){grantToAnimate=true;});
	});
	
	$(document).on("click", ".home-page-sliders .arrow.back", function(){
		if (disable_double_click) return;
		disable_double_click = true;
		setTimeout(function () {
			disable_double_click = false;
		}, 200);
		var selector = $(".home-page-slides.horizontal");
		
		var activeItem = $(".home-page-slide-item.activePage")[0];
		var prevItem = $(activeItem).prev()[0];

		if( prevItem == undefined ){
			$(selector).stop().animate({"left":"-3880px"}, "slow");
			$(".home-page-slide-item.activePage").removeClass("activePage");
			$(".home-page-slide-item:last").addClass("activePage");
			return;
		} 
		 
		var left = $(selector).position().left;
		
		$(selector).stop().animate({"left":left+970}, "slow");
		$(".home-page-slide-item.activePage").removeClass("activePage");
		$(prevItem).addClass("activePage");
	});
	

	
	$(document).on("click", ".black-tabs.movies-data-period li", function(){
		if($(this).hasClass("active")){
			return;
		}
		
		var period = $(this).children("a").attr("data-period");
		
		console.log(period);
		
		$(".black-tabs.movies-data-period li").removeClass("active");
		$(this).addClass("active");
		
		$.get(siteUrl + "/TopMovies/getMovies?type="+period+"&ajax=1", function(data){
			$(".home-page-slides.horizontal").html(data);
			$(".home-page-slides.horizontal").css("left", "0px");
		});
	});
}

var activeDropDown = false;

function filterEvents(){
	$(document).on("click", "#movie-genre-selector", function(){
	    $("#movie-genre-selector").addClass("movie-genres-opened").removeClass("movie-genres-closed");
	    $("#movie-genre-selector-genres").show();
	});
	
	$(document).on("mouseover", "#movie-genre-selector-genres", function(){
	    $("#movie-genre-selector").addClass("movie-genres-opened").removeClass("movie-genres-closed");
	    $("#movie-genre-selector-genres").show();
	});
	
	$(document).on("mouseout", "#movie-genre-selector, #movie-genre-selector-genres", function(){
	    $("#movie-genre-selector").removeClass("movie-genres-opened").addClass("movie-genres-closed");
	    $("#movie-genre-selector-genres").hide();
	});
	
	$(document).on("click", "#movie-genre-selector-genres-inner ul li", function(){
	    var type = $(this).parent().attr("class");
	    
	    if($(this).hasClass("selected")){
	    	$(this).removeClass("selected");
	    } else{
	    	$(this).addClass("selected");
	    }
	    
	    if(type == "videos"){
	        loadVideos();
	    } else{
	       loadFullView();
	    }
	});
	
	$(document).on("click", "#search-results-sort > a", function(){
		if($(this).hasClass("active")){
			$("#search-results-header").css("height", "30px");
			$(".sort-type").hide();
			$("#search-results-sort > a").removeClass("active");
			return;
		}
		
	    var sortType = $(this).data("sort");
	    
	    $("#search-results-header").css("height", "69px");
	    $("#search-results-sort > a").removeClass("active");
	    $(this).addClass("active");
	    
	    $(".sort-type").hide();
	    $("."+sortType+"-sort").show();
	});
	
	$(document).on("click", ".views-sort a", function(){
		var isActive = $(this).hasClass("active");
		
		$(".views-sort a").removeClass("active");
		
		if(!isActive){
			$(this).addClass("active");
		}
        
        var type = $(this).attr("rel");
	    if(type == "videos"){
            loadVideos();
        } else{
           loadFullView();
        }
	});
	
	$(document).on("click", ".rating-sort a", function(){
		var isActive = $(this).hasClass("active");
		
	    $(".rating-sort a").removeClass("active");
	    
	    if(!isActive){
			$(this).addClass("active");
		}
	    
	    loadFullView();
	});
	
	$(document).on("click", ".b-core-ui-select", function(){
		var type = $(this).data("type");
		
		$(".b-core-ui-select__dropdown."+type).show();
		
		
		var scrollTop = $(document).scrollTop();
	    $(".year-inp").focus();
	    $(document).scrollTop( scrollTop );
	    
	    var myInterval;
	    
	    $(".b-core-ui-select__dropdown > div > div").off("scroll");
	    $(".b-core-ui-select__dropdown > div > div").scroll(function(){ 
			console.log('111');
			
			activeDropDown = true;
			
			clearTimeout(myInterval);
			
			myInterval = setTimeout(function(){
				$(".year-inp").focus();
				activeDropDown = false;
			},600);
		});
	});
	
		
	
	$(document).on("blur", ".year-inp", function(){
		setTimeout(function(){
			if(!activeDropDown){
				$(".b-core-ui-select__dropdown").hide();
			}
		},300);
	});
	
	$(document).on("click", ".b-core-ui-select__dropdown__item", function(){
		var ul = $(this).parent();
		
		$(ul).children("li.b-core-ui-select__dropdown__item").removeClass("selected");
		$(this).addClass("selected");
		
		$(this).parents(".b-core-ui-select__dropdown").prev().children("span:first").html( $(this).html() );
		
	    loadFullView();
	});
	
	$(document).on("click", ".language-tabs li", function(){
		var isActive = $(this).hasClass("active");
		var ul = $(this).parent();
		
		$(ul).children("li.lang").removeClass("active");
		
		if(!isActive){
			$(this).addClass("active");
		}
		
	    loadFullView();
	});
	
	$(document).on("click", ".alphabet-sort a", function(){
		var isActive = $(this).hasClass("active");
		
		$(".alphabet-sort a").removeClass("active");
		
		if(!isActive){
			$(this).addClass("active");
		}
		
	    loadFullView();
	});
	
	$(document).on("click", ".anythingControls ul li", function(){
		$(".anythingControls ul li a").removeClass("cur");
		$(this).children("a").addClass("cur");

              $(".featured-slider-item.panel").removeClass("activePage");
		      $( ".featured-slider-item.panel:nth-child("+($(this).index()+1)+")" ).addClass("activePage",1000 );
		
	});
	
	$(document).on("click", ".watch-trailer-btn, .trailerClick, .videoClick", function(){
		
		var trailersLinks = [];
		
		$(this).children(".n-movie-trailer").each(function(index, value){
			trailersLinks.push( $(value).html() );
		});
		
		if(trailersLinks.length == 0){
			return;
		}
		
		$("#overlay").show();
		$("#trailer-box").show();
		$("#trailer-box").css("top", ($(document).scrollTop() + 100) );
		$("#trailers-switch-buttons").html("");
		
		if(trailersLinks.length > 1){
			var trailerButtons = "";
			
			$.each(trailersLinks, function(index, value){
				var active = index == 0 ? "class='active'" : '';
				
				trailerButtons += "<li "+active+"><a href='javascript:;' data-link='"+value+"'>Trailer "+(index+1)+"</a></li>";
			});
			
			$("#trailers-switch-buttons").html("<ul>"+trailerButtons+"</ul>");
			
			$("#trailers-switch-buttons ul li:first").addClass("selected");
		}
		
		loadTrailer(trailersLinks[0]);
	});
	
	$(document).on("click", ".close-trailer-btn", function(){
		$("#overlay").hide();
		$("#trailer-box").hide();
	});
	
	$(document).on("click", "#trailers-switch-buttons ul li", function(){
		$("#trailers-switch-buttons ul li").removeClass("selected");
		
		$(this).addClass("selected");
		
		loadTrailer( $(this).children("a").data("link") );
	});
}

function loadTrailer(link){
	$.get(siteUrl+"/Movies/getMoviesTrailerEmbed?fileUrl="+link+"&width=640&height=360&ajax=1", function(data){
		$("#trailer-video").html(data);
	});
}

function getFilterSort(){
	var sortType = $("#search-results-sort > a.active").data("sort");
	var filterSort = '';
	
	if(!sortType){
		return "";
	}
	
	if($(".views-sort a.active").size() > 0){
		filterSort += "views:" + $(".views-sort a.active").data("sort")+"|";
	} 
	
	if($(".rating-sort a.active").size() > 0){
		filterSort += "rating:" + $(".rating-sort a.active").data("sort")+"|";
	} 
	
	//if(sortType == "date"){
		var startYear = $(".b-core-ui-select__dropdown.start-year").find(".b-core-ui-select__dropdown__item.selected").html().trim();
		var endYear = $(".b-core-ui-select__dropdown.end-year").find(".b-core-ui-select__dropdown__item.selected").html().trim();
		
		filterSort += "date:" + startYear+"-"+endYear+"|";
	//} 

	if($(".language-tabs li.active a").size() > 0){
		filterSort += "language:" + $(".language-tabs li.active a").data("shows") + "|";
	} 
	
	if($(".alphabet-sort a.active").size() > 0){
		filterSort += "alphabet:" + $(".alphabet-sort a.active").data("letter") + "|";
	}
	
	return filterSort;
}

function getFilterGenres(){
	var genresArray = [];
	$("#movie-genre-selector-genres-inner ul li.selected").each(function(){
		genresArray.push( $(this).data("id") );
	});
	
	if(genresArray.length == 0){
		return 0;
	}
	
	return genresArray.join();
}

function getFilterPaginationPage(){
	return $("#fullViewPagination").val();
}

function loadFullView(){
	var genres = getFilterGenres();
	var page = 1;//getFilterPaginationPage();
	var sort = getFilterSort();
	
	var url = "Movies/fullView/"+page+"/"+genres+"/"+sort;
	
	//window.location = url;
	$.get(siteUrl + "/" + url + "?ajax=1&withoutFilter=1", function(data){
		if(!data){
			return;
		}
		
		$(".movies-block-main").remove();
		
		$(".movies-full-top-line").after(data);
	});
}

function getUrlForVideos(){
    var categories = getFilterGenres();
    var orderBy = $(".views-sort a.active").size() > 0 ? "view" : "";
    var start = $(".videos-main").attr("rel");
    
    var url = "Videos/getVideos/?ajax=1&categoryIds="+categories+"&orderBy="+orderBy+"&start="+start;
    
    return siteUrl + "/" + url;
}

function loadVideos(){
    $(".videos-main").attr("rel", 0);
    
    var url = getUrlForVideos();
    
    blockMoreVideos = true;
    
    $.get(url, function(data){
        blockMoreVideos = false;
        
        if(!data){
            return;
        }
        
        $("#search-results-list-inner").html(data);
    });
}

function loadMoreVideos(){
    var start = $(".videos-main").attr("rel");
    
    if(!start){
        return;   
    }
    
    $(".videos-main").attr("rel", parseInt(start)+1);
    blockMoreVideos = true;
    
    var url = getUrlForVideos();
    
    $.get(url, function(data){
        blockMoreVideos = false;
        
        if(!data){
            return;
        }
        
        $("#search-results-list-inner").append(data);
    });
}

function countView(videoId){
    var url = "Videos/countView/?ajax=1&id="+videoId;
    
    $.get(siteUrl + "/" + url);
}

function showAds(){
    $(".movie-online-iframe").attr("src", siteUrl + "/ads.php");
    $(".movie-online-iframe").parent().show();
    $(".online-block").hide();
    $(".home").show();   
}



//====================================================
// Download Module
function selectMovieDownoadLink(){
	if( !$(".movie-downloadlink-audio").size() ){
		return;
	}
	
	$('.download-link-menu ul').sbscroller();
	
	selectDownloadLanguage( $(".movie-downloadlink-audio:first") );
	
	$("body").off("click", ".movie-downloadlink-audio");
	$("body").off("click", ".movie-downloadlink-quality");
	$("body").off("click", ".movie-downloadlink-server");
	$("body").off("click", ".download_contain");
	
	$("body").on("click", ".movie-downloadlink-season", function() {
		selectDownloadSeason( this );
	});
	
	$("body").on("click", ".movie-downloadlink-episode", function() {
		selectDownloadEpisode( this );
	});
	
	$("body").on("click", ".movie-downloadlink-audio", function() {
		selectDownloadLanguage( this );
	});
	
	$("body").on("click", ".movie-downloadlink-quality", function() {
		selectDownloadQuality( this );
	});
	
	$("body").on("click", ".movie-downloadlink-server", function() {
		selectDownloadServer( this );
	});
	
	/*
	$("body").on("click", ".download_contain", function() {
			var languageId = $(".movie-downloadlink-audio.sel").getAttr("data-id");
			var quality = $(".movie-downloadlink-quality.sel").getAttr("data-id");
			var server = $(".movie-downloadlink-server.sel").getAttr("data-id");
			var season = $(".movie-downloadlink-season.sel").getAttr("data-id") || 0;
			var episode = $(".movie-downloadlink-episode.sel").getAttr("data-id") || 0;
			
			var linkType = $(".movie-downloadlink-server.sel").getAttr("link-type");
			var link = $(".movie-downloadlink-list[id_movies_types="+quality+"][id_movies_servers="+server+"][id_lang="+languageId+"][season="+season+"][episode="+episode+"]").getAttr("online-link");
			var id = $(".movie-downloadlink-list[id_movies_types="+quality+"][id_movies_servers="+server+"][id_lang="+languageId+"][season="+season+"][episode="+episode+"]").getAttr("link-id");
			
			if(!link){
				alert("Error! Please select another server");
				return;
			}
			
			if(linkType == "blank"){
				link = siteUrl + '/MoviesServers/goToLink/?id='+id;
			}
			
			console.log(link);
		});*/
	
}


function selectDownloadLanguage( audioElement ){
	$(".movie-downloadlink-audio").removeClass("sel");
	$(".movie-downloadlink-audio").hide();
	$(audioElement).addClass("sel");
	
	var languageId = $( audioElement ).getAttr("data-id");
	var season = $(".movie-downloadlink-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-downloadlink-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-downloadlink-audio[season="+season+"][episode="+episode+"]").show();
	
	var ids = [];
	$(".movie-downloadlink-audio[season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.download-link-menu ul').sbscroller("refresh");
	selectDownloadQuality( $(".movie-downloadlink-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]:first") );	
}

function selectDownloadQuality( qualityElement ){
	$(".movie-downloadlink-quality").removeClass("sel");
	$(".movie-downloadlink-quality").hide();
	
	$(qualityElement).addClass("sel");
	
	var languageId = $(".movie-downloadlink-audio.sel").getAttr("data-id");
	var season = $(".movie-downloadlink-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-downloadlink-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-downloadlink-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]").show();
	var quality = $(qualityElement).getAttr("data-id");
	
	var ids = [];
	$(".movie-downloadlink-quality[id_lang="+languageId+"][season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.download-link-menu ul').sbscroller("refresh");
	selectDownloadServer( $(".movie-downloadlink-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]:first") );
}

function selectDownloadServer( serverElement ){
	$(".movie-downloadlink-server").removeClass("sel");
	$(".movie-downloadlink-server").hide();
	
	$( serverElement ).addClass("sel");
	
	var languageId = $(".movie-downloadlink-audio.sel").getAttr("data-id");
	var quality = $(".movie-downloadlink-quality.sel").getAttr("data-id");
	var season = $(".movie-downloadlink-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-downloadlink-episode.sel").getAttr("data-id") || 0;
	
	$(".movie-downloadlink-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]").show();
	
	var ids = [];
	$(".movie-downloadlink-server[id_lang="+languageId+"][id_movies_types="+quality+"][season="+season+"][episode="+episode+"]").each(function(){
		var id = $(this).getAttr("data-id");
		
		if( ids.indexOf( id ) != -1 ){
			$(this).remove();
			return true;
		}
		
		ids.push( id );
	});
	
	$('.download-link-menu ul').sbscroller("refresh");
	
	generateDownloadLink();
}

function generateDownloadLink(){
	var languageId = $(".movie-downloadlink-audio.sel").getAttr("data-id");
	var quality = $(".movie-downloadlink-quality.sel").getAttr("data-id");
	var server = $(".movie-downloadlink-server.sel").getAttr("data-id");
	var season = $(".movie-downloadlink-season.sel").getAttr("data-id") || 0;
	var episode = $(".movie-downloadlink-episode.sel").getAttr("data-id") || 0;
	
	var linkType = $(".movie-downloadlink-server.sel").getAttr("link-type");
	var link = $(".movie-downloadlink-list[id_movies_types="+quality+"][id_movies_servers="+server+"][id_lang="+languageId+"][season="+season+"][episode="+episode+"]").getAttr("online-link");
	var id = $(".movie-downloadlink-list[id_movies_types="+quality+"][id_movies_servers="+server+"][id_lang="+languageId+"][season="+season+"][episode="+episode+"]").getAttr("link-id");
	
	$(".download-lnk").attr("href", link);
}
//====================================================