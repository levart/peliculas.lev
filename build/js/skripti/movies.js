function getDocHeight() {
    var D = document;
    return Math.max(
            D.body.scrollHeight, D.documentElement.scrollHeight,
            D.body.offsetHeight, D.documentElement.offsetHeight,
            D.body.clientHeight, D.documentElement.clientHeight
            );
}

function displayRecords(page, div) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    //.substr(val.rating_imdb.length - 1)
                    var post_id = val.id;
                    var lang_array = []; // more efficient than new Array()
                    var langlinks = []; // more efficient than new Array()
                    var sort_lang = ""; // more efficient than new Array()
                    $.each(val.langList, function (key, langs) {
                        lang_array.push(langs);
                        langlinks.push('<a class="posterLang">' + langs + '</a>');
                        sort_lang += langs + ",";
                    });

                    html += '<div class="movie-element movie-element-size-1" data-id="' + post_id + '" data-rating="' + rating_imdb + '" data-langs="' + sort_lang + '" style="display: inline-block;">';
                    if (div == "watchlist" || div == "subscribe") {
                        html += '<div class="delete-block item-remove-from-' + div + '" movie-id="' + post_id + '" ><a title="Delete">X</a></div>';
                    }
                    html += '<a href="movies/detail/id/' + post_id + '" class="zoomOnHover ajaxRequest" style="background: url(uploads/movies/157x236-' + post_id + '.jpeg);">';
                    html += '<div class="movie-overlay clearfix"><em class="info-left">' + val.year + '<span> წელი</span></em>';
                    html += '<em class="info-right"><span style="font-family:Arial, sans-serif">IMDB:</span>' + rating_imdb + '</em>';
                    html += '</div>';
                    html += '</a>';
                    html += '<div class="info-icon" data-id="' + post_id + '">!</div>';
                    html += '<div class="preview-block">';
                    html += ' <div class="inner">';
                    html += '<div class="title">';
                    html += '<div class="imdb-votes"><em class="caption">ხმა:</em><em class="votes">155199</em></div>';
                    html += ' <a>';
                    html += '<div class="imdb"><span>' + rating_imdb + '</span></div>';
                    html += '</a>';
                    html += '<h2>' + val.title + '</h2>';
                    html += '<h3>' + val.slogan + '</h3>';
                    html += '<div class="duration">' + val.lenght + '</div>';
                    html += '</div>';
                    html += '<div class="details">';
                    html += '<p><span>release date:</span><a href="movies/detail/id/' + post_id + '" class="ajaxRequest">' + val.year + '</a></p>';
                    html += '<p><span>country:</span>';
                    var countrySize = val.countries.length;
                    var counter = 0;
                    $.each(val.countries, function (i, country) {
                        counter++;
                        html += '<span id="genres-' + post_id + '"><a>' + country.title + '</a></span>';
                        if (counter == countrySize) {
                            html += '';
                        } else {
                            html += ',';
                        }
                    });
                    html += '</p>';
                    html += '<p><span>genre:</span> ';
                    var genresSize = val.genre.length;
                    var counter = 0;
                    $.each(val.genre, function (i, genres) {
                        counter++;
                        html += '<span id="genres-' + genres.id + '"><a href="movies/search/genres/' + genres.id + '" class="ajaxRequest">' + genres.title + '</a></span>';
                        if (counter == genresSize) {
                            html += '';
                        } else {
                            html += ',';
                        }
                    });
                    html += ' </p>';
                    html += '<p>';
                    html += ' <span>director:</span> ';
                    var directorsSize = val.directeds.length;
                    var counter = 0;
                    $.each(val.directeds, function (i, directeds) {
                        counter++;
                        html += '<span class="cast-link"><a >' + directeds.title + '</a><span id="genres-' + directeds.id + '"><a href="movies/search/genres/' + directeds.id + '" class="ajaxRequest">' + directeds.title + '</a></span>';
                        if (counter == directorsSize) {
                            html += '';
                        } else {
                            html += ',';
                        }
                    });
                    html += '</p>';
                    html += '<p>';
                    html += ' <span>Stars:</span>';
                    var starsCount = val.actors.length;
                    var counter = 0;
                    if (starsCount > 0) {
                        if (val.actors) {
                            $.each(val.actors, function (key, actors) {
                                if (actors.id) {
                                    counter++;
                                    html += '<span class="cast-link"><a href="movies/actor/id/' + actors.id + '" class="ajaxRequest">' + actors.name + '</a>';
                                    if (actors.file_exist == true) {
                                        html += '<span class="cast-thumb"><img data-src="uploads/actor/' + actors.id + '.jpeg" alt="" src="uploads/actor/' + actors.id + '.jpeg"></span>';
                                    }
                                    html += '</span>';
                                    if (counter == starsCount) {
                                        html += '';
                                    } else {
                                        html += ',';
                                    }
                                }
                            });
                        }
                    }
                    html += '</p>';
                    html += '</div>';
                    html += '<div class="description">';
                    html += '<p>';
                    html += ' <div class="desc-title">Description:</div><br clear="all">';
                    var description = val.description;
                    if (description.length < 220) {
                        html += description;
                    } else {
                        html += description.substr(0, 220) + '...';
                    }
                    html += '</p>';
                    html += ' </div>';
                    html += '<div style="position: absolute;bottom: 0;">';
                    html += "<span class='trailerClick trailer-btn ";
                    if (val.trailer == "") {
                        html += "notrailer";
                    }
                    html += "' trailer='" + val.trailer + "'>trailer</span>";
                    html += '</div>';
                    if (div != "watchlist") {
                        html += '<div class="add-to-watchlist watchlist-btn" movie-id="' + post_id + '"><a style="cursor:pointer;">watchlist</a></div>';
                    }
                    html += '<div class="views">Views: <span>1710</span></div>';
                    html += '<div class="posterOverlay" data-id="' + post_id + '">';
                    html += '<a href="movies/detail/id/' + post_id + '" class="ajaxRequest">';
                    html += '<div class="play"></div>';
                    html += '</a>';
                    html += '<div class="posterLangs">';

                    if ($.inArray("CAS", lang_array) == -1) {
                        lang_array.push("CAS");
                        langlinks.push('<a class="posterLang inactive">CAS</a>');
                    }

                    if ($.inArray("LAT", lang_array) == -1) {
                        lang_array.push("LAT");
                        langlinks.push('<a class="posterLang inactive">LAT</a>');
                    }

                    if ($.inArray("VOS", lang_array) == -1) {
                        lang_array.push("VOS");
                        langlinks.push('<a class="posterLang inactive">VOS</a>');
                    }
                    var lang_count = 0;
                    $.each(langlinks, function (key, languages) {
                        lang_count = lang_count + 1;
                        if (lang_count < 3) {
                            html += languages;
                        }
                    });
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}

/*************************/

function displayHistory(page, div) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    //.substr(val.rating_imdb.length - 1)
                    var post_id = val.id;
                    html += '<div class="profile-item-block  clearfix" id="w' + post_id + '">';
                    html += '<div class="delete-block remove_history" movie-id="' + post_id + '" table="user_rate">';
                    html += '<a onclick="#" title="delete">X</a>';
                    html += '</div>';
                    html += '<!-- .delete-block -->';
                    html += '<div class="profile-item-thumb"><img src="uploads/movies/157x236-' + post_id + '.jpeg" alt=""></div>';
                    html += '<!-- .profile-item-thumb -->';
                    html += '<div class="profile-item-titles">';
                    html += '<span class="title-ge">' + val.title + '</span>';
                    html += '<span class="title-en">' + val.slogan + '</span>';
                    html += '<span class="profile-note-date">date of issue: <span>' + val.year + '</span>';
                    html += '</span></div>';
                    html += '<!-- .profile-item-titles --><span class="profile-item-arrow"></span><a href="movies/detail/id/' + post_id + '" title="<?php echo $this->escape( $movie["title"] ); ?> - <?php echo $this->escape( $movie["name"] ); ?>" class="ajaxRequest"></a></div>';
                    html += '<!-- .profile-item-block -->';
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}

/*************************/

function displayGames(page, div) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    //.substr(val.rating_imdb.length - 1)
                    var post_id = val.id;

                    html += '<div class="movie-element movie-element-size-1" data-id="' + val.id + '">';
                    html += '<a href="games/detail/id/' + val.id + '" class="zoomOnHover ajaxRequest" style="background: url(uploads/games/157x236-' + val.id + '.jpeg);">';
                    html += '</a>';
                    html += '<div class="info-icon" data-id="' + val.id + '">!</div>';
                    html += '<div class="preview-block">';
                    html += '<div class="inner">';
                    html += '<div class="title">';
                    html += '<div class="imdb-votes"><em class="caption">ხმა:</em><em class="votes">155199</em></div>';
                    html += '<h2>' + val.title + '</h2>';
                    html += '</div>';
                    html += '<!-- .title -->';
                    html += '<div class="details">';
                    html += '<p><span>release date:</span> <a href="movies/search/year/' + val.year + '_' + val.year + '" class="ajaxRequest">' + val.year + '</a></p>';
                    html += '<p><span>genre:</span>  <a> ';

                    html += val.category_title;
                    html += '</a>';
                    html += '<p><span>platform:</span>  <a> ' + val.platform + '</a>';
                    html += '<p><span>developer:</span> <a> ' + val.developer + '</a>';
                    html += '</p>';
                    html += '</div>';
                    html += '<!-- .details -->';
                    html += '<div class="description" style=" min-height: 180px;">';
                    html += '<p>';
                    html += '<div class="desc-title">Description:</div><br clear="all">';
                    var description = val.description;

                    if (description.length < 220) {
                        html += description;
                    } else {
                        html += description.substr(0, 200);
                    }
                    html += '</p>';
                    html += '</div>';
                    html += '<!-- .description -->';
                    html += '<div style="position: absolute;bottom: 0;">';
                    html += ' <span class="trailerClick trailer-btn ';
                    if (val.trailers == "") {
                        html += 'notrailer';
                    }
                    html += ' "  trailer="';
                    html += val.trailers + '" >trailer</span>';
                    html += '</div>';
                    html += '<!-- .views -->';
                    html += '<div class="posterOverlay" data-id="' + val.id + '">';
                    html += '<a href="games/detail/id/' + val.id + '" class="ajaxRequest">';
                    html += '<div class="play2"></div>';
                    html += '</a>';
                    html += '</div>';
                    html += '</div>';
                    html += '<!-- .inner --></div>';
                    html += ' <!-- preview-block-->';
                    html += '</div>';
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}

/*************************/

function displayCollection(page, div) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    var post_id = val.id;
                    html += '<div class="movie-element movie-element-size-1" data-id="'+post_id+'">';
					html += '<a href="movies/collection/id/' + post_id + '" class="zoomOnHover size105 ajaxRequest" style="background: linear-gradient(rgba(0, 0, 0, 0.49), rgba(0, 0, 0, 0.49)),url(uploads/collection/' + post_id + '.jpeg); ">';
					html += '<span>';
    				html += '<div class="bunddle-title" style="text-align: center !important;">' + val.title + '</div>';
    				html += '</span>';
					html += '</a>';
  					html += '</div>';
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}


/*************************/

function displaylist(page, div) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    var post_id = val.id;
					var image='';
					
					if(val.movie_id!=undefined && val.movie_id!=null){
						image='uploads/movies/157x236-'+val.movie_id+'.jpeg';
					} else{
						image='newImages/nop-photo.png';
					}
					
						html += '<div class="profile-item-block watchlist-item-block " id="wl'+post_id+'">';
						html += '<div class="delete-block" table="user_lists"><a href="javascript:void(0);" data-rec_id="'+post_id+'" title="წაშლა" class="deleteList">X</a></div><!-- .delete-block -->';
						html += '<div class="profile-item-thumb">';
						html += '<img src="'+image+'" alt="">';
						html += '</div>';
						html += '<div class="profile-item-titles">';
						html += ' <span class="title-ge"></span>';
						html += ' <span class="title-en" style="font-size:15px;">'+val.title+'</span>';
						html += '<span class="title-en" style="font-size:20px;margin-top:20px;"><?php echo count($item["list"]); ?></span>';
						html += '</div><!-- .profile-item-titles --><span class="profile-item-arrow"></span>';
						html += ' <a href="user/listdetail/id/'+post_id+'" title=" - '+val.title+'" class="ajaxRequest"></a>';
						html += '</div>';     
					
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}




/*************************/

function displayvideos(page, div, start_index) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
				var num=20;
				var tvale=0;
				var chasatvirti=obj.length/20;
				
                $.each(obj, function (i, val) {
                    var html = '';
                    var rating_imdb = val.rating_imdb;
                    var post_id = val.id;
					var embed='';
					
					
					if(val.embed!=undefined && val.embed!=null){
						embed=escapeHtml(val.embed);
					} 
					
						html += '<div class="smallBlock" data-index="'+start_index+'">';
						html += '<span onClick="javascript:openVideo(\''+embed+'\',this)" class="play"></span>';
						html += '<div class="opacity"></div>';
						html += '<div class="title_geo">'+val.title+'</div>';
						html += '<div class="title_eng"><i class="glyphicon glyphicon-eye-open"></i> '+val.view+'</div>';
						html += '<div class="title_eng" style="right: 10px;left: auto;">'+val.time+'</div>';
						html += '<span onClick="javascript:openVideo(\''+embed+'\',this)">';
						html += '<img src="uploads/video/'+val.image+'" alt="" style="width:100%;height:100%;"></span><span class="arrow"></span></div>';
						
						if(tvale==4 || chasatvirti<1){						
							html += '<div id="videoInnerLoader" >';
							html += '<div class="close" onclick="closeVideo(\''+num+'\')"><i class="glyphicon glyphicon-remove-circle"></i></div>';
							html += '<div id="playerCont'+num+'"> </div>';
							html += '<div class="videoTitle"><span></span></div>';
							html += '<div class="videoView"></div>';
							html += '</div>';
							tvale=-1;
							start_index++;
						}
											
                    $('#' + div).append(html);
					num++;
					tvale++;
                });
            }
            $('#loader_image').hide();
        }
    });
}


/*************************/

function displayphotos(page, div, start_index) {
    $('#loader_image').show();
    // alert(page);
    $.ajax({
        type: "GET",
        async: true,
        url: page,
        beforeSend: function () {
            $('#loader_image').show();
        },
        success: function (response) {
            if (response == "" || response == "[]") {
                $("#" + div).attr("data-atr", "nodata");
                $('#loader_image').hide();
            } else {
                var obj = JSON.parse(response);
                var items = [];
				var num=20;
				var tvale=0;
				var chasatvirti=obj.length/20;
				
                $.each(obj, function (i, val) {
                    var html = '';
						html += '<img class="x-img" data-index="'+start_index+'" data-id="'+val.id+'" data-title="'+val.title+'" data-year="'+val.year+'"  data-image="'+val.image+'" src="'+val.image+'">';	
						start_index++;					
                    $('#' + div).append(html);
                });
            }
            $('#loader_image').hide();
        }
    });
}






/*******/

function escapeHtml(unsafe) {
    return unsafe
         .replace(/&/g, "&amp;")
         .replace(/</g, "&lt;")
         .replace(/>/g, "&gt;")
         .replace(/"/g, "&quot;")
         .replace(/'/g, "&#039;");
 }
