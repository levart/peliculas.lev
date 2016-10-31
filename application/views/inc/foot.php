  <!-- <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-1.11.3.min.js"></script> -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.jshowoff.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="<?=base_url()?>assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src='https://www.google.com/recaptcha/api.js'></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script data-require="angular.js@1.3.x" src="https://code.angularjs.org/1.3.15/angular.js" data-semver="1.3.15"></script>
    
        <script src="<?=base_url()?>assets/js/owl.carousel.min.js"></script>
        <script src="<?=base_url()?>app/app.js"></script>
        
        <script type="text/javascript" src="http://p.jwpcdn.com/6/10/jwplayer.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.touchSwipe.min.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.jcarousel.min.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jcarousel.responsive.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/moderniz.js" ></script>
         <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.anythingslider.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/custom.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/main.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/addons.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/skripti/movies.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.form.min.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/swfobject.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/users.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/newsystem.js" ></script>
        <link rel="stylesheet" type="text/css" href="http://allpeliculas.com/templates/site/allmovies.ge/aa.css?v97" />
        <script type="text/javascript" src="http://allpeliculas.com/templates/site/allmovies.ge/qtip.js?v97"></script>
        <script type="text/javascript" src="http://allpeliculas.com/js/libs/jquery.clipboard-2.0.1/jquery.clipboard.min.js"></script>

        <script type="text/javascript" src="<?=base_url()?>assets/js/search.js"></script>
 
        
        <script>
            $(document).ready(function(){
                
                
                
                $("#date").slider();
                
			var isHomePage="true";
			$('div.movie-element').die('mouseover').live('mouseover',function(e){
				var id = $(this).attr('data-id');
				/*if (!$(this).children('.preview-block').hasClass('preview-right')) {
				$(this).children('.preview-block').animate({'left': '188px'},200);//css('left','198px');
				} else {$(this).children('.preview-block').animate({'right': '188px'},200);}*/
				

				var parentId = $(this).parent().parent().attr('id');
				// Get Actors Data
				$.ajax({
					'url': '/movies/preview/' + id,
					'dataType':'json',
					'success':function(result) {
		
						var actorsList 		= [], 
							countriesList 	= [], 
							categoriesList 	= [];
		
						$.each(result.actors, function(i, item) {
							if(i < 3 && item.actor !== null && typeof item.actor !== 'undefined') {
								actorsList.push(((isGamesPage || parentId=='games')?'<a>'+item.actor.toUpperCase()+'</a>':'<span class="cast-link"><a href="' + item.link + '">' + item.actor.toUpperCase() + '</a><span class="cast-thumb loading"><img data-link="' + item.link + '" data-src="' + staticUrl + '/cast/' + item.id + '.jpg" alt=""/></span></span>'));
							}
						});
						
						$.each(result.countries, function(i, item) {
							if(i < 3 && item.country !== null && typeof item.country !== 'undefined') {
								countriesList.push('<a>' + item.country.toUpperCase() + '</a>');
							}
						});
						
						
		
						$.each(result.genres, function(i, item) {
							if( i < 3 && item.category !== null ) {
								categoriesList.push('<a href="' + item.link + '">' + item.category + '</a>');
							}
						});
		
						if(actorsList.length >= 1) {
							$('span#actors-' + id).html(actorsList.join(', '));
						} else {
							$('span#actors-' + id).hide();
							$('span#actors-' + id).prev('span').hide();
						}
						
						if(countriesList.length >= 1) {
							$('span#countries-' + id).html(countriesList.join(', '));
						} else {
							$('span#countries-' + id).hide();
							$('span#countries-' + id).prev('span').hide();
						}
						
						/*if(directorsList.length >= 1) {
							$('span#directors-' + id).html(directorsList.join(', '));
						} else {
							$('span#directors-' + id).html('-');
						}*/
		
						if(categoriesList.length >= 1) {
							$('span#genres-' + id).html(categoriesList.join(', '));
						} else {
							$('span#genres-' + id).hide();
							$('span#genres-' + id).prev().hide();
						}
					}
				});
			});
                
            });
            

        </script> 
        <script type="text/javascript">


                $('ul.tabs').each(function () {
                    // For each set of tabs, we want to keep track of
                    // which tab is active and its associated content
                    var $active, $content, $links = $(this).find('a');

                    // If the location.hash matches one of the links, use that as the active tab.
                    // If no match is found, use the first link as the initial active tab.
                    $active = $($links.filter('[href="' + location.hash + '"]')[0] || $links[0]);
                    $active.addClass('active');

                    $content = $($active[0].hash);

                    // Hide the remaining content
                    $links.not($active).each(function () {
                        $(this.hash).hide();
                    });

                    // Bind the click event handler
                    $(this).on('click', 'a', function (e) {
                        // Make the old tab inactive.
                        $active.removeClass('active');
                        $content.hide();

                        // Update the variables with the new link and content
                        $active = $(this);
                        $content = $(this.hash);

                        // Make the tab active.
                        $active.addClass('active');
                        $content.show();

                        // Prevent the anchor's default click action
                        e.preventDefault();
                    });
                });


                
               $(function(){
                    $('#sliderTop').anythingSlider();
                });

            </script>
            <script>
            pageLoader.init();
        </script>




<script>
var pausebanneradcnt = false;
var adPlayed = false;
var movieFirstUrl = 'http://85.117.37.153/fast24/1833/1833_Russian_300.mp4';
var movieFirstUrlWeb = 'http://85.117.37.153/fast24/1833/1833_Russian_1500.mp4';
var movieUrlEmpty = 'http://85.117.37.153/fast24/1833/1833_{lang}_{quality}.mp4';
var movieLangs = 'Russian,Georgian,English';
var movieQuals = '1500,300';
var isAnimation = '0';

var subtitles = 'English,Russian';

$(document).ready(function(){

$('body').on('click','.closePauseAd',function(){
var $pauseDiv = $('.pauseDiv');
if ($pauseDiv.length) $('.pauseDiv').remove();
})

var bigBack=true;
if (screen.width<=1366 && screen.height<=768) bigBack=false;


$('<img />').attr('src', staticUrl+'/moviecontent/1833/covers/1920x1080-1833.jpg')
    .load(function(){

    $('#movie-container').css('background-image','url('+staticUrl+'/moviecontent/1833/covers/1920x1080-1833.jpg'+')')
    $('#movie-container').css('background-size','2066px')
    
    if (bigBack){
    $('#playerContent').css('background-image','url('+staticUrl+'/moviecontent/1833/covers/1920x1080-1833.jpg'+')');
    $('#playerContent').css('background-size','2066px')
    }
    else $('#playerContent').css('background-image','url('+staticUrl+'/moviecontent/1833/covers/980x530-1833.jpg'+')');
    
    
    }).error(function(){
  $('<img />').attr('src', staticUrl+'/moviecontent/1833/covers/980x530-1833.jpg')
    .load(function(){
    
    $('#movie-container').css('background-image','url('+staticUrl+'/moviecontent/1833/covers/980x530-1833.jpg'+')')
    $('#playerContent').css('background-image','url('+staticUrl+'/moviecontent/1833/covers/980x530-1833.jpg'+')');
    
    });
  });
  
  
  $('.soundClass').click(function(){
  if (typeof jwplayer != 'undefined'){
  var jwPState = jwplayer('player').getState();
            if (jwPState=='PLAYING'){
              jwplayer('player').pause();
            }
  }
    //$('.soundClass').css('color','#6f6f6f;');
    //$(this).css('color','#0083ca');
    //$(this).css('float','left');
    $('.objPl').html('');
    $('#pl'+$(this).data("pl")).css('display','block');
    $('#pl'+$(this).data("pl")).css('float','right');
    $('#pl'+$(this).data("pl")).html('<object type="application/x-shockwave-flash" data="'+staticUrl+'/nplayer/moviePlayer/player_mp3_mini.swf" width="200" height="20" style="right:0;position:absolute;">    <param name="movie" value="'+staticUrl+'/swf/player_mp3_mini.swf" />     <param name="bgColor" value="#ffffff" /> <param name="FlashVars" value="mp3='+$(this).data('mp3')+'&amp;autoplay=1&amp;bgcolor=&amp;loadingcolor=47adff&amp;buttoncolor=47adff" /></object>');
    
    });
    
    
});

</script>

<script>
            var isGamesPage = false, isSoftsPage = false, isMoviePage = true,  isHomePage = false, isTVPage = false, isSearchPage = false, isTrailersPage = false,
                isEpisodePage = false, isQuotePage = false, isEpisodesPage = false, isTVShowsPage = false, isVideosPage = false, isxPhotosPage = false, isvPhotosPage = false, isdPhotosPage = false, isxVideosPage = false, isvVideosPage = false, isdVideosPage = false, isFlashgamesPage = false, isTVShow = false,
                isDocumentaryPage = false, isOverviewPage = false, isRatesPage = false, isNewsPage = false,
                isFavoritesPage = false, isWatchlistPage = false, isFavoriteMomentsPage = false, georgianMovie = false,
        georgianMovieCountry = false,
                documentary = false;
      </script>

<script>
  if (window!= top) // if your website window is not top
    top.location.href=location.href
</script>



        <script type="text/javascript">


var PRefed=0;
function isEmpty (val){
   return (val === undefined || val == null || val.length <= 0) ? true : false;
}

var dataSeriaId, dataSeasonId, season_id, episode_id, savedQ, savedL;

dataSeasonId = '1';
dataSeriaId = '0';

season_id =1;
episode_id=1;

function removeAd(){
$('#themovieDiv').remove();
adPlayed=true;
$('#playerContent .play').click();
}

function saveProgress(progress){
localStorage.setItem('1833', jwplayer().getPosition()+'-'+jwplayer().getCurrentQuality()+"-"+jwplayer().getCurrentCaptions()+'-'+dataSeasonId+'-'+dataSeriaId);
}
function saveProgressHtml5(){
  if (jwplayer('player').getFullscreen() && jwplayer('player').getPosition()>=300 && !pausebanneradcnt){
    $('.pauseBanner').css('display','block');
      pausebanneradcnt=true;
      
      setTimeout(function(){ 
      
      var q = document.querySelectorAll(":hover");

      if ($(q[q.length-1]).attr('id')!='pauseframead') {
        $('.pauseBanner').css('display','none');
      }

      }, 10000);
      
  }
if ((parseInt(jwplayer().getPosition())%3)==0)
{
localStorage.setItem('1833', jwplayer().getPosition()+'-'+$('#player_controlbar_hd .active').index()+"-"+$('#player_controlbar_cc .active').index()+'-'+dataSeasonId+'-'+dataSeriaId);
}
if ($('.seasonInn.activeSeason').is(':last-child') && $('.innerSeries.activeSerie').is(':last-child'))
{

}
else
{
var titlesStart = jwplayer().getDuration()-jwplayer().getPosition();

if ($('.innerSeries.activeSerie').data('endtitles')>=titlesStart && titlesStart>0) 
{
var $nextSerieDiv = $('#nextSerieDiv');
if (!$nextSerieDiv.length)
$('.jwmain').append('<div id="nextSerieDiv"></div>')
}
}
}
function saveProgressMobile(){
localStorage.setItem('1833', jwplayer().getPosition()+'-0-0-'+dataSeasonId+'-'+dataSeriaId);
}

//var lData = localStorage.getItem($('#movieid').val());
var localData = localStorage.getItem($('#movieid').val());

/*if (lData) {
  var lData = lData.split("-");
  var resumeTimeN = ((lData[0]>0)?lData[0]:0)
  }*/

if (localData){
savedLocalData = localData.split("-");
savedQ = (savedLocalData[1]) ? savedLocalData[1] : ''
savedL = (savedLocalData[2]) ? savedLocalData[2] : ''
}



var q=movieQuals.split(',');
if (/*savedQ!='' && movieQuals.length>savedQ*/false) 
{

q = ( q[parseInt(savedQ)] );
}
else
q = '1500';


var l=movieLangs.split(',');

var langInId;
var hasGeorgianLang=-1;
langInId = ((savedL!="" && movieLangs.length>savedL && false)?parseInt(savedL):((l.indexOf("Georgian")!=-1)?l.indexOf("Georgian"):((l.indexOf("Russian")!=-1)?l.indexOf("Russian"):"0")));
l = l[langInId];
function changeQLSE (q,l,s,e,c)
{

var video = document.getElementsByTagName("video")[0];
video.removeAttribute("crossorigin");
$('video track').remove()

$sElement = $('.innerSeries[data-season="'+s+'"][data-serie="'+e+'"]');
if ($sElement.data('cachehref')) $urlToChange = $sElement.data('cachehref'); else $urlToChange = movieUrlEmpty;

var sPlusOne = parseInt(s);
var ePlusOne = parseInt(e)+1;

if (sPlusOne<10) sPlusOne='0'+sPlusOne;
if (ePlusOne<10) ePlusOne='0'+ePlusOne;


var timeToSeek = jwplayer().getPosition();

file = $urlToChange.replace('{lang}',l).replace('{quality}',q).replace('{season}',sPlusOne).replace('{episode}',ePlusOne);

jwplayer().load([{file:file}]);

if (c) jwplayer().seek(timeToSeek); else jwplayer().play()

}


if(location.search.indexOf("serie") == -1){
              var playermargi = 0 
              var playerWidth = '100%'  
            }else{
              var playermargi = 10  
              var playerWidth = 700 
            }

$(document).ready(function(){

$('.showEpisodesDiv').on('mouseover',function(){
$(this).css('display','block')
})

$('button.lightbulb').die('click').live('click',function(){
if ($('#overlay').is(':visible'))
{
$('#overlay').hide();
$('#playerContent').css('z-index',0);
$(this).css('background','url(http://staticnet.adjara.com/images/lightoff.png)!important');
}
else
{
$('#overlay').show();
$('#playerContent').css('z-index',10);
$(this).css('background','url(http://staticnet.adjara.com/images/lighton.png)!important');
}
})

function changeQL (q,l)
{
  var video = document.getElementsByTagName("video")[0];
video.removeAttribute("crossorigin");
$('video track').remove()

var timeToSeek = jwplayer().getPosition();
file = movieUrlEmpty.replace('{lang}',l).replace('{quality}',q);
jwplayer().load([{file:file}]);

//$('video')[0].currentTime=timeToSeek;
jwplayer().seek(timeToSeek)
//jwplayer().play()
}

$('#player_controlbar_hd .jwoption').die('click').live('click',function(){

if ($(this).hasClass('active') && location.search.indexOf("serie") != -1) return;
$('#player_controlbar_hd .jwoption').removeClass('active')
$(this).addClass('active')
if (location.search.indexOf("serie") != -1)
{
q = (($(this).html()=='HD')?'1500':(($('.activeSerie').data('quality').indexOf('300')>=0)?'300':'800'));
}
else
{
q = (($(this).html()=='HD')?'1500':((movieQuals.indexOf('300')>=0)?'300':'800'));
}


if (q=='1500')
{
$('#player_controlbar .jwhd').css('background','#35648C');
$('#player_controlbar .jwhd button').css('background','url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAeCAYAAAA2Lt7lAAAAVElEQVR42u3UwQkAIAgFUEdrFEdw40axwIMegiAQMf6Hf5AO76BEqppaAAAAlAGeYfWZdvQczgZmBiDxPQGw+RHwtAbEegEKdtDnTGMYnx0AAL8CCyaoniymqkdZAAAAAElFTkSuQmCC)');
}
else
{
$('#player_controlbar .jwhd').css('background','none');
$('#player_controlbar .jwhd button').css('background','url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAeCAYAAAFBKe5zAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDM0MiwgMjAxMC8wMS8xMC0xODowNjo0MyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo3ODBBMDAyRDg1MDIxMUU0OEM3QURCRkY1M0Q1RDU5NCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo3ODBBMDAyRTg1MDIxMUU0OEM3QURCRkY1M0Q1RDU5NCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjc4MEEwMDJCODUwMjExRTQ4QzdBREJGRjUzRDVENTk0IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjc4MEEwMDJDODUwMjExRTQ4QzdBREJGRjUzRDVENTk0Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+qsFI2wAAAV9JREFUeNpi/P//PwMMMDEgARgnDUQwIisDCCBGgnr+I3MYQQRAAKHowakFSruAGCzI2pFoVBuRAUAAEbSDMom7EPcB7YDiDigNAgxUtBwggHAaRbJJxGgwBuJ3QHwGyj8DxR3IGliQ2KDYEYRimAGMSLHHiB5OIHAGSgv+RwWCMHXINjCiBwhVPA0QQPQN1kGoYTc0glYBcTlSTCuh6IBGSChSAocldlhkvUMSx4hpEEhD09ABNRCsjgktZkF4JpqzQWnsLLofQqHuv4sk+Q4qBuLfG9ExDRBgJHua5i4atQAdCNLCgndQXA7NIjOhfEFoIf4fSndAs/5/qHwaVhuQszYQG0Nz9F1orlZCk+9AL8eheBVU3AVNHMMHZ6ElgCsQv4f64h1yOwAHuIczSNFsBLm4HM3lM6GuK0fzgSDUxzDXr0J3Pa6aXglaDxoj+Wo1mhwy2AP17WhOHqkWAAAzo3aGgBc71AAAAABJRU5ErkJggg==)');
}

changeQL(q,l);
})
$('#player_controlbar_cc .jwoption').die('click').live('click',function(){
if ($(this).hasClass('active') && location.search.indexOf("serie") != -1) return;
$('#player_controlbar_cc .jwoption').removeClass('active')
$(this).addClass('active')
l = $(this).html();

if (l=='English')
{
$('#player_controlbar .jwcc button').css('background','url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAeCAYAAAFBKe5zAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDM0MiwgMjAxMC8wMS8xMC0xODowNjo0MyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpEQjU0QTFFODg0MjAxMUU0OEQ4MzhFMjQwNjY5QUMxOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpEQjU0QTFFOTg0MjAxMUU0OEQ4MzhFMjQwNjY5QUMxOCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkRCNTRBMUU2ODQyMDExRTQ4RDgzOEUyNDA2NjlBQzE4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkRCNTRBMUU3ODQyMDExRTQ4RDgzOEUyNDA2NjlBQzE4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+tURXeAAAAXlJREFUeNpi/P//PwMMMDEgARinA4iNGZGVAQQQI0E97zCUAQQQCgebFphVpOlAAQABRLoOvBJnoOz/UPwOXYcQlD5LZcsBAginUSSbhAuwQOkzSGKrgVgQiCug4iZAHAqNlPcMICf9RwUdQGwMxLuh/FCoGEhdBy4NglD8HyoP0vwOxKG9pwECiPY2DFINM6ExCsIuaLFeDqV3QxP5KlCknIFGDnIk7oZGXAc0wgShcoIsSNkEOVcYI9kiCE5DENsEYX5ghOL3UL4ymtNAoBPkZHQbwqD0e7S8+B+aF41HZEwDBBjJnqa5i0YtoBYQRLcAlE/uQgtnZKwEpWF1lguSAf+RathyKP8ulB0KLSbesSDZ+h5WtyGBe2g1xm5oftyDJA6rNWYBcTqa/nQWNIE9eLydDrVwFRaD0AuAmdAiR4mFxLCtQDIA2Wd7oEHzHloMpUODcTcso7kgRwyajwShrlmNJK4EFTuLFowuUHFBqPjZ0Zw8AiwAANB967ou465XAAAAAElFTkSuQmCC)');
}
else
if (l=='Georgian')
{
$('#player_controlbar .jwcc button').css('background','url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAeCAYAAAFBKe5zAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDM0MiwgMjAxMC8wMS8xMC0xODowNjo0MyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpFRDgxQzJEQTg0MjAxMUU0ODYzNENERUEyMzQxNzJFMyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpFRDgxQzJEQjg0MjAxMUU0ODYzNENERUEyMzQxNzJFMyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkVEODFDMkQ4ODQyMDExRTQ4NjM0Q0RFQTIzNDE3MkUzIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkVEODFDMkQ5ODQyMDExRTQ4NjM0Q0RFQTIzNDE3MkUzIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+U3l9bwAAAYVJREFUeNpi/P//PwMMMDEgARAHJnWXEVkZQAAx4tWDnQMQQCh60FW9QxPbTVAHVgAQQKTrwCshCMVnoGKhIDZI4j3MiVCwB4jPUtFygADCaRTJJhHSsBsax6ug/DNImAEqDpIvZ4EyGEEcaLiAgDGSoTB5SFgB/SD4HwLOQGmG/6iAAUn+Lu09DRBA9AvWQaYBlHDvQmNVCYhnIsWyCzQS78JjHRhK76CRA8JK0AhiQML/kdmgpDELalsHNHcwIJUdQqDcgeImoKbdSCacwWIDsgv+wzz9DmrqHiQb/kP9txpJ3mRExjRAgJHsaZq7aNQCBqSiklyAop8FWv6CMto9aMZ7D83CoVB+BTQrC0KzBTKYBRXfjcS/B9ULKgpmMf6HJCOQRDoeV8FqiE408T3QfAjK8SZocmCHs0A575EkZkJ9oAR1jQmagcSCe8jFCwiUIxUjgmhFDYwtiIZBch1Q/TORxEKhYig1Faz4FITafhapsHPBEfl7kHyPrn/WaE4eIRYAAHPVPW5kXZpiAAAAAElFTkSuQmCC)');
}
else
if (l=='Russian')
{
$('#player_controlbar .jwcc button').css('background','url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAeCAYAAAFBKe5zAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAxhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDM0MiwgMjAxMC8wMS8xMC0xODowNjo0MyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpEMkZGQTMwQzg0MjAxMUU0OEE5MTgwQTNDQ0EwMDIzOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpEMkZGQTMwRDg0MjAxMUU0OEE5MTgwQTNDQ0EwMDIzOCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkQyRkZBMzBBODQyMDExRTQ4QTkxODBBM0NDQTAwMjM4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkQyRkZBMzBCODQyMDExRTQ4QTkxODBBM0NDQTAwMjM4Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+EryFoAAAAYRJREFUeNpi/P//PwMMMDEgARYoLQjELozIygACiBGnHtwcgABC0YNLlSCUDiVaBwoACCDSdeCVOAPE/6F0B5SNVQcjSBEVLQcIIJxGkWwSIQ1noNgYyp8JpctBcY7k7TMwDUpICgWRNArCEgqUf48B5AcgPgOlVwFxKBC/g4r9h4r/h/Fp72mAAKJfsA4yDTOhsbwKKdYZ0Ngg+i446yFF2kxopMEiCznCBGFiMA3osYqsQek/AgjCChYTqJNCsTj7HjRbMYATIJKTYCYaQ2lQeiqHyr+DipWPyJgGCDCSPU1zF41aQA0giK1SPgOVWA2lQ5Hy1HsgfgfEZ6F8GOiAFuxh0HK8A6p/D1LZfZYFSQPIoAokfhq0wN9DhKuNkcy4B3VMJ7b6HuSK3VDDZ0FdRAwIg5YQq6GWrYJWVbuRax7kUgNWYuyG8ndD+S5QPqhAuwstRRigpUookn4XqNxdWEaD1XV70HzkAvXuPaS4UYIGxR6oHAy4QF0viCw/mpNHgAUASaNbOSxMdW4AAAAASUVORK5CYII=)');
}

changeQL(q,l)
})

function playPlayer(){

if (adPlayed) $('#playerContent .play').click();
else 
{
//$.get("http://adjaranet.com/Movie/onPauseCnt?&ajax=1");
$('#themovieDiv').css('display','block');
$('#themovieFrame').attr('src','/req/themovie.php?isAnimation='+isAnimation);

}
}
});
$('.switchPlayer').click(function(){
if (pageLoader.ishtml5==true) pageLoader.ishtml5=false; else pageLoader.ishtml5=true;
pageLoader.getUrl;
pageLoader.loader()
})

  var pauseDiv = '';

  /*var pauseRand = Math.floor((Math.random() * jsonPause.banner.length) + 1);
    pauseRand = pauseRand -1;
  
  if (jsonPause.banner.length>0)
  {
  $showRand = Math.floor((Math.random() * jsonPause.banner[pauseRand][pauseRand].howone)+1);  
  pauseDiv = ($showRand==1)?'<div class="pauseDiv" style="left:-400px;"><div style="width:791px;height:95px;">'+jsonPause.banner[pauseRand][pauseRand].code+'</div></div>':'';
  }*/


$('#download').mouseover(function(){
$('#dMsg').show();
})
$('#download').mouseleave(function(){
$('#dMsg').hide();
})
</script>


<script>
var pageTitle = 'ცხოვრება, ისეთი, როგორც სინამდვილეში / Life as We Know It - adjaranet.com'; var sU='0';
d=document;a='';a+='REFERER:'+escape(d.referrer)
s=screen;a+='+RESOLUTION:'+s.width+'X'+s.height
a+='+DEPT:'+(s.colorDepth?s.colorDepth:s.pixelDepth)
js=12;f=0;
if(window.self !== window.top){ f=1;}


var i=new Image();
        i.src=('https:' == location.protocol ? 'https:' : 'http:') + '//pa.tns-ua.com/ge/bug/pic.gif?siteid=net.adjara.com&j=1&nocache='+Math.random();
        var tns_already, tnscm_adn = tnscm_adn || [], currentProtocol = ('https:' == location.protocol ? 'https:' : 'http:');
        (function(c,m){if(c.indexOf&&c.indexOf(m)<0){c.unshift(m);}}(tnscm_adn,'inline_cm'));
        if ('undefined'==typeof(tns_already) || null==tns_already || 0==tns_already)
        {
            tns_already=1;


            (function(){
                var p=document.getElementsByTagName('head')[0];
                var s=document.createElement('script');
                s.type='text/javascript';
                s.src= currentProtocol + '//gesource.mmi.bemobile.ua/cm/cm.js';
                s.async = true;
                p.appendChild(s);
            })();
        };




$(document).ready(function () {
    $(".sld_ser").on("click",function(){
      var th = $(this);
      var func = th.data('func');
      var off = th.data('off');
      var type = th.data('type');

    if(func == 'next'){
          // $('.ajaxslider .animated').css( "right", "0" );  
          // $('.ajaxslider .animated').animate({ 'left' : "0" },2000,'linear');
         
          

        }else if(func == 'back'){
           
          // $('.ajaxslider .animated').css( "left", "0" );  
          // $('.ajaxslider .animated').animate({ 'right' : "0" },2000,'linear');
         
        }

      $.get("/movies/ajaxSlider/"+off+"/5/"+type, function(data){

        if(func == 'next' && off < 25){
            var offnext = off+5;
            var offback = off-5;
            $(".sld_ser.back").show();
            if(offnext == 25){
              $(".sld_ser.next").hide();
            }else{
              $(".sld_ser.next").show();
            }
            $(".sld_ser.next").data('off',offnext);
            $(".sld_ser.back").data('off',offback);


        }else if(func == 'back' && off > 0){
            var offnext = off;
            var offback = off-5;
            $(".sld_ser.next").show();
            if(off == 0){
              $(".sld_ser.back").hide();
            }else{
              $(".sld_ser.back").show();
            }
            $(".sld_ser.next").data('off',offnext);
            $(".sld_ser.back").data('off',offback);

            

        }
     
          $('.ajaxslider .animated').fadeOut(400, function() {
                $('.ajaxload').html(data);
                $('.ajaxslider .animated').hide(0);
                $('.ajaxslider .animated').fadeIn(400);
              });
      


         

            

       

        // $('.ajaxload').html(data);
     
    });

  });



     $("#topS").on("click",function(){
      
        var th = $(this);
        var func = th.data('func');
        var off = th.data('off');
        var type = th.data('type');
        
        $.get("/movies/ajaxSlider/0/5/top", function(data){
          $(".sld_ser.next").data('type', "top");
          $(".sld_ser.back").data('type', "top");
          $(".sld_ser.next").data('off',5);
          $(".sld_ser.back").data('off',0);
          $('.ajaxload').html(data);
        });

      });

     $("#newS").on("click",function(){
      

          var th = $(this);
          var func = th.data('func');
          var off = th.data('off');
          var type = th.data('type');
          
          $.get("/movies/ajaxSlider/0/5/new", function(data){
            $(".sld_ser.next").data('type', "new");
            $(".sld_ser.back").data('type', "new");
            $(".sld_ser.next").data('off',5);
            $(".sld_ser.back").data('off',0);

            $('.ajaxload').html(data);
          });

     });


});

</script>





    </body>
</html>