
function isEmpty (val){
   return (val === undefined || val == null || val.length <= 0) ? true : false;
}
//საიტის ზომებისთვის

function getPageSize() {
	var xScroll, yScroll;
	if (window.innerHeight && window.scrollMaxY) {	
		xScroll = window.innerWidth + window.scrollMaxX;
		yScroll = window.innerHeight + window.scrollMaxY;
	} else if (document.body.scrollHeight > document.body.offsetHeight){
		xScroll = document.body.scrollWidth;
		yScroll = document.body.scrollHeight;
	} else {
		xScroll = document.body.offsetWidth;
		yScroll = document.body.offsetHeight;
	}
	var windowWidth, windowHeight;
	if (self.innerHeight) {
		if(document.documentElement.clientWidth){
			windowWidth = document.documentElement.clientWidth; 
		} else {
			windowWidth = self.innerWidth;
		}
		windowHeight = self.innerHeight;
	} else if (document.documentElement && document.documentElement.clientHeight) {
		windowWidth = document.documentElement.clientWidth;
		windowHeight = document.documentElement.clientHeight;
	} else if (document.body) {
		windowWidth = document.body.clientWidth;
		windowHeight = document.body.clientHeight;
	}	
	
	if(yScroll < windowHeight){
		pageHeight = windowHeight;
	} else { 
		pageHeight = yScroll;
	}
	if(xScroll < windowWidth){	
		pageWidth = xScroll;		
	} else {
		pageWidth = windowWidth;
	}
	arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight);
	return arrayPageSize;
};


var resizeSite = {
	pagesize : new Array(),
	defaultSize: 1230,
	minSize : 1000,
	id: 0,
	init:function(){
		this.pagesize = getPageSize()
		$( window ).resize(function() {
			clearTimeout(resizeSite.id);
			resizeSite.id = setTimeout(function() {
			  mainSlider.resizeSlider()
			}, 500);
		})
	}
}


// მთავარი სლაიდერი

var mainSlider =  {
	getItems    : null,
	ItemsLength : 0,
	itemsWidth  : 1424,
	documentW   : 0,
	getpos		: 0,
	timeoutId	: null,
	pauseTime   : 3000,
	
	i : false,
	init : function(){
            
		
		$("#slider-con #gradient").die('click').bind('click',function(){
			var href = $("#slider-con .active").children('.play').attr('href')
			
			
		})
		
		if($("#slider-wrapper #slider-con .slider-inner").length > 0){
			var firstHtml = $("#slider-wrapper #slider-con .slider-inner").first()[0].outerHTML
			var lastHtml = $("#slider-wrapper #slider-con .slider-inner").last()[0].outerHTML
		}
		$("#rightSlide").after(lastHtml)
		$("#slider-wrapper #slider-con .slider-inner:last").after(firstHtml)
		this.getItems 		= $("#slider-wrapper #slider-con .slider-inner")
/*		$(this.getItems).each(function() {
         $(this).click(function(){
				$(this).children('.slider-title').children('.slider-link').click()
			})
      });*/
		this.ItemsLength 	= $(this.getItems).length
		this.createController(this.ItemsLength)
		$("#slider-con").css('width',this.ItemsLength * this.itemsWidth)
		this.resizeSlider()
		$(this.getItems).eq(1).addClass('active')
		$(this.getItems).eq(1).children('.slider-title').css('opacity',1)
		
		$(document).keydown(function(e){
			if (e.keyCode == 37) { 
				if(mainSlider.i == false){
					mainSlider.next()
				}
			}else if(e.keyCode == 39 ){
				if(mainSlider.i == false){
					mainSlider.prev()
				}
			}
		});
		$("#leftSlide img").click(function (){
			if(mainSlider.i == false){
				mainSlider.next()
			}
		})
		$("#rightSlide img").click(function (){
			if(mainSlider.i == false){
				mainSlider.prev()
			}
		})	
                
                $("div#slider-wrapper").show();
	},
	createController: function(length){
		var length = length - 2
		var controll = '';
		for(var i = 0; i < length; i++){
			if(i == 0){
				controll += '<span class="act" data-key="'+i+'"></span>';
			}else{
				controll += '<span data-key="'+i+'"></span>';
			}
			
		} 
		$("#sliderController").html(controll)
		$("#sliderController span").click(function(){
                    
			var pos = $(this).attr('data-key')
			if(mainSlider.i == false){
				mainSlider.controllerSlide(pos)
			}
		})
	},
	resizeSlider: function(){
		if($("#leftSlide").length == 1){
			this.documentW = getPageSize()
			this.getpos = (this.itemsWidth - (this.documentW[0] - this.itemsWidth) / 2) * -1
			$("#slider-con").css('margin-left',this.getpos)
			$("#leftSlide").css('width',(this.documentW[0] - this.itemsWidth) / 2)
			$("#rightSlide").css('width',(this.documentW[0] - this.itemsWidth) / 2)
			clearTimeout(mainSlider.timeoutId);
			this.autoSlide()
			$("#sliderController span:first").click();
		}
	},
	
	chek : function(){
		if($(".slider-inner").length == 0){
			delete mainSlider;
			return(false)
		}else{
			return(true)
		}
	},
	
	controllerSlide : function(position){
		clearTimeout(mainSlider.timeoutId);
		lft = ((position * 1424) - this.getpos )* -1;
		this.i = true
		var pos = parseFloat(position) + 2
		var prev = $("#slider-con .slider-inner").eq(pos)
		$("#slider-con").stop(true,true).animate({
			marginLeft: lft+"px"
		},300,function(){
			$("#sliderController span").removeClass('act')
			$("#sliderController span").eq(position).addClass('act')
			$("#slider-con .active").removeClass('active')
			$(prev).prev('.slider-inner').addClass('active')
			mainSlider.timeoutId = window.setTimeout(function() {
				mainSlider.autoSlide()
			}, mainSlider.pauseTime)
			mainSlider.i = false
		});
		
	},
	next : function(){
		clearTimeout(mainSlider.timeoutId);
		var active = $("#slider-con .active")
		if($( ".slider-inner" ).index( active ) != 1){
			this.i = true
			var oldlft = $("#slider-con").css('margin-left').length-2
			var lft    = parseFloat($("#slider-con").css('margin-left').substr(0,oldlft)) + this.itemsWidth
			$("#slider-con").stop(true,true).animate({
				marginLeft: lft+"px"
			},300,function(){
				var prev = $("#slider-con .active")
				$(prev).removeClass('active')
				$(prev).prev('.slider-inner').addClass('active')
				var act = parseFloat($( ".slider-inner" ).index( $("#slider-con .active")) - 1)
				$("#sliderController span").removeClass('act')
				$("#sliderController span").eq(act).addClass('act')
				mainSlider.timeoutId = window.setTimeout(function() {
					mainSlider.autoSlide()
				}, mainSlider.pauseTime)
				mainSlider.i = false
			});
		}else{
			this.i = true
			var lft = (((this.ItemsLength - 3) * this.itemsWidth) - this.getpos) * -1
			
			$("#slider-con").stop(true,true).animate({
				marginLeft: lft+"px"
			},300,function(){
				var cur = $("#slider-con .active")
				$("#slider-con .slider-inner:eq(-2)").addClass('active')
				$(cur).removeClass('active')
				var act = parseFloat($( ".slider-inner" ).index( $("#slider-con .active")) - 1)
				$("#sliderController span").removeClass('act')
				$("#sliderController span").eq(act).addClass('act')
				mainSlider.timeoutId = window.setTimeout(function() {
					mainSlider.autoSlide()
				}, mainSlider.pauseTime)
				mainSlider.i = false
			});
		}
	},
	
	prev : function(){
		if($(".slider-inner").length == 0){
			delete mainSlider;
			return(false)
		}
		clearTimeout(mainSlider.timeoutId);
		var active = $("#slider-con .active")
		var chek = $("#slider-con .slider-inner").length - 2
		if($( ".slider-inner" ).index( active ) != chek){
			this.i = true
			var oldlft = $("#slider-con").css('margin-left').length-2
			var lft    = parseFloat($("#slider-con").css('margin-left').substr(0,oldlft)) - this.itemsWidth
			
			$("#slider-con").stop(true,true).animate({
				marginLeft: lft+"px"
			},300,function(){
				var next = $("#slider-con .active")
				$(next).next('.slider-inner').addClass('active')
				$(next).removeClass('active')
				var act = parseFloat($( ".slider-inner" ).index( $("#slider-con .active")) - 1)
				$("#sliderController span").removeClass('act')
				$("#sliderController span").eq(act).addClass('act')
				
				/*$(next).next('.slider-inner').removeClass('transitionScale');
				$(next).next('.slider-inner').addClass('transitionScale');*/
				
				mainSlider.timeoutId = window.setTimeout(function() {
					mainSlider.autoSlide()
				}, mainSlider.pauseTime)
				mainSlider.i = false
			});
		}else{
			this.i = true
			$("#slider-con").stop(true,true).animate({
				marginLeft: this.getpos+"px"
			},300,function(){
				var cur = $("#slider-con .active")
				$("#slider-con .slider-inner:eq(1)").addClass('active')
				$(cur).removeClass('active')
				var act = parseFloat($( ".slider-inner" ).index($("#slider-con .active")) - 1)
				$("#sliderController span").removeClass('act')
				$("#sliderController span").eq(act).addClass('act')
				mainSlider.timeoutId = window.setTimeout(function() {
					mainSlider.autoSlide()
				}, mainSlider.pauseTime)
				mainSlider.i = false
			});
		}
	},
	autoSlide : function (){
		if(this.chek()){
			clearTimeout(mainSlider.timeoutId);
			this.timeoutId = window.setTimeout(function() {
				mainSlider.prev()
			}, mainSlider.pauseTime)
		}
	}
		
}



$('#sliderTop').anythingSlider({
  // Appearance
  theme               : "default", // Theme name
  mode                : "horiz",   // Set mode to "horizontal", "vertical" or "fade" (only first letter needed); replaces vertical option
  expand              : false,     // If true, the entire slider will expand to fit the parent element
  resizeContents      : true,      // If true, solitary images/objects in the panel will expand to fit the viewport
  showMultiple        : false,     // Set this value to a number and it will show that many slides at once
  easing              : "swing",   // Anything other than "linear" or "swing" requires the easing plugin or jQuery UI

  buildArrows         : true,      // If true, builds the forwards and backwards buttons
  buildNavigation     : true,      // If true, builds a list of anchor links to link to each panel
  buildStartStop      : true,      // If true, builds the start/stop button

  appendForwardTo     : null,      // Append forward arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendBackTo        : null,      // Append back arrow to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendControlsTo    : null,      // Append controls (navigation + start-stop) to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendNavigationTo  : null,      // Append navigation buttons to a HTML element (jQuery Object, selector or HTMLNode), if not null
  appendStartStopTo   : null,      // Append start-stop button to a HTML element (jQuery Object, selector or HTMLNode), if not null

  toggleArrows        : false,     // If true, side navigation arrows will slide out on hovering & hide @ other times
  toggleControls      : false,     // if true, slide in controls (navigation + play/stop button) on hover and slide change, hide @ other times

  startText           : false,   // Start button text
  stopText            : false,    // Stop button text
  forwardText         : "&raquo;", // Link text used to move the slider forward (hidden by CSS, replaced with arrow image)
  backText            : "&laquo;", // Link text used to move the slider back (hidden by CSS, replace with arrow image)
  tooltipClass        : "tooltip", // Class added to navigation & start/stop button (text copied to title if it is hidden by a negative text indent)

  // Function
  enableArrows        : true,      // if false, arrows will be visible, but not clickable.
  enableNavigation    : true,      // if false, navigation links will still be visible, but not clickable.
  enableStartStop     : true,      // if false, the play/stop button will still be visible, but not clickable. Previously "enablePlay"
  enableKeyboard      : true,      // if false, keyboard arrow keys will not work for this slider.

  // Navigation
  startPanel          : 1,         // This sets the initial panel
  changeBy            : 1,         // Amount to go forward or back when changing panels.
  hashTags            : false,      // Should links change the hashtag in the URL?
  infiniteSlides      : true,      // if false, the slider will not wrap & not clone any panels
  navigationFormatter : null,      // Details at the top of the file on this use (advanced use)
  navigationSize      : false,     // Set this to the maximum number of visible navigation tabs; false to disable

  // Slideshow options
  autoPlay            : false,     // If true, the slideshow will start running; replaces "startStopped" option
  autoPlayLocked      : false,     // If true, user changing slides will not stop the slideshow
  autoPlayDelayed     : false,     // If true, starting a slideshow will delay advancing slides; if false, the slider will immediately advance to the next slide when slideshow starts
  pauseOnHover        : true,      // If true & the slideshow is active, the slideshow will pause on hover
  stopAtEnd           : false,     // If true & the slideshow is active, the slideshow will stop on the last page. This also stops the rewind effect when infiniteSlides is false.
  playRtl             : false,     // If true, the slideshow will move right-to-left

  // Times
  delay               : 3000,      // How long between slideshow transitions in AutoPlay mode (in milliseconds)
  resumeDelay         : 15000,     // Resume slideshow after user interaction, only if autoplayLocked is true (in milliseconds).
  animationTime       : 600,       // How long the slideshow transition takes (in milliseconds)
  delayBeforeAnimate  : 0,         // How long to pause slide animation before going to the desired slide (used if you want your "out" FX to show).

  // Callbacks
  onBeforeInitialize  : function(e, slider) {}, // Callback before the plugin initializes
  onInitialized       : function(e, slider) {}, // Callback when the plugin finished initializing
  onShowStart         : function(e, slider) {}, // Callback on slideshow start
  onShowStop          : function(e, slider) {}, // Callback after slideshow stops
  onShowPause         : function(e, slider) {}, // Callback when slideshow pauses
  onShowUnpause       : function(e, slider) {}, // Callback when slideshow unpauses - may not trigger properly if user clicks on any controls
  onSlideInit         : function(e, slider) {}, // Callback when slide initiates, before control animation
  onSlideBegin        : function(e, slider) {}, // Callback before slide animates
  onSlideComplete     : function(slider) {},    // Callback when slide completes; this is the only callback without an event "e" parameter

  // Interactivity
  clickForwardArrow   : "click",         // Event used to activate forward arrow functionality (e.g. add jQuery mobile's "swiperight")
  clickBackArrow      : "click",         // Event used to activate back arrow functionality (e.g. add jQuery mobile's "swipeleft")
  clickControls       : "click focusin", // Events used to activate navigation control functionality
  clickSlideshow      : "click",         // Event used to activate slideshow play/stop button
  allowRapidChange    : false,           // If true, allow rapid changing of the active pane, instead of ignoring activity during animation

  // Video
  resumeOnVideoEnd    : true,      // If true & the slideshow is active & a supported video is playing, it will pause the autoplay until the video is complete
  resumeOnVisible     : true,      // If true the video will resume playing (if previously paused, except for YouTube iframe - known issue); if false, the video remains paused.
  addWmodeToObject    : "opaque",  // If your slider has an embedded object, the script will automatically add a wmode parameter with this setting
  isVideoPlaying      : function(base){ return false; } // return true if video is playing or false if not - used by video extension
});




            


            
$(document).ready(function () {
    $(document).on("click", ".black-tabs.movies-data-period li", function(){
		if($(this).hasClass("active")){
			return;
		}
		
		var period = $(this).children("a").attr("data-period");
		
		console.log(period);
		
		$(".black-tabs.movies-data-period li").removeClass("active");
		$(this).addClass("active");
		
		$.get("/Home/getMovies/"+period+"/1", function(data){
			$(".anythingBase.horizontal").html(data);
			$(".anythingBase.horizontal").css("left", "0px");
		});
	});
});








