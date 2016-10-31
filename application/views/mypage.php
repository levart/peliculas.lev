
<div id="profile-page">
        <div id="profile-page-inner" class="clearfix">



        <div id="watch-later" class="user-list">

            <div class="profile-items-header clearfix"> 
        		<a href="<?=base_url()?>/users/userLists" class="arrow_box right all-new-red ajaxRequest"><span>Todas</span></a>
                <h2>Mis listas</h2>
                <span class="movies-total"> Total: <span class="CountAllList"><?=$countlists->sumPlist?></span></span> 
            </div>

           <?php foreach ($playlists as $playlist): ?>
            
				<div class="profile-item-block  clearfix" id="w234">
				  <div class="delete-block " movie-id="234" table="user_lists">
				  <a href="javascript:void(0);" data-rec_id="234" title="Remove" class="deleteList">X</a></div>
				  
		          <div class="profile-item-thumb">
						<?php 
	                		if($playlist->img!=""){
	                			echo '<img src="'.$playlist->img.'" alt="">';
	                		}else{
	                			echo '<img src="'.base_url().'assets/images/nop-photo.png" alt="">';
	                		}
	                	 ?>
		          </div>
		          <div class="profile-item-titles">
		          	<span class="title-ge"></span><span class="title-en" style="font-size:15px;"><?=$playlist->name?></span>
		          	<span class="title-en" style="font-size:20px;margin-top:20px;"><?=$playlist->sumlist?></span>
		          </div>
				  <span class="profile-item-arrow"></span><a href="<?=base_url()?>users/listdetail/<?=$playlist->ID?>" class="ajaxRequest"></a>
				 </div>

		<?php endforeach ?>


		</div>



            <!-- #watch-later -->
            <div id="my-favorites-and-rates">
                <div id="my-favorites" class="clearfix">
                    <div class="profile-items-header clearfix"> 
                    <a href="<?=base_url()?>users/wishlist" class="arrow_box right all-new-red ajaxRequest"><span class="CountAllWL">Todas</span></a>
                        <h2>Ver despues</h2>
                        <span>Total : <span class="CountAllVap"><?=$countlists->sumWlist?></span></span> 
                  </div>


                <?php foreach ($wishlist as $movie): ?>
		    		<div class="profile-item-block  clearfix" id="w109">
						<div class="delete-block remove_watchlist" data-movid="<?=$movie->ID?>"><a title="Remove">X</a></div>

	                    <div class="profile-item-thumb">
	                    	<?php 
		                		if($movie->img!=""){
		                			echo '<img src="'.$movie->img.'" alt="">';
		                		}else{
		                			echo '<img src="'.base_url().'assets/images/nop-photo.png" alt="">';
		                		}
		                	 ?>
	                    </div>
	                    <div class="profile-item-titles">
	                    	<span class="title-ge">Objetivo: <?=$movie->name?></span>
	                    	<span class="title-en"><?=$movie->name?></span>
	                    	<span class="profile-note-date">date of issue: <span><?=$movie->year?></span></span></div>
							<span class="profile-item-arrow"></span>
							<a href="<?=base_url()?>movies/view/<?=$movie->ID?>" title="Objetivo: <?=$movie->name?>" class="ajaxRequest"></a>	
					</div>
			  	<?php endforeach ?> 
			   
			</div>

                <!-- #my-favorites -->
                <div id="my-rates" class="clearfix">
                    <div class="profile-items-header clearfix"> <a href="user/subscriptions" class="arrow_box right all-new-red ajaxRequest"><span>Todas</span></a>
                        <h2>Suscrito</h2>
                        <span class="movies-total"> Total: <span class="CountAllGam">49</span></span> </div>
                     <div class="profile-item-block  clearfix" id="w944">			
				<div class="delete-block remove_subscribe" movie-id="944"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-944.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">The Walking Dead</span><span class="title-en">The Walking Dead</span><span class="profile-note-date">date of issue: <span>2010</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/944" title="The Walking Dead - The Walking Dead" class="ajaxRequest"></a></div> <div class="profile-item-block  clearfix" id="w109">			
				<div class="delete-block remove_subscribe" movie-id="109"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-109.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">Objetivo: La Casa Blanca</span><span class="title-en">Olympus Has Fallen</span><span class="profile-note-date">date of issue: <span>2013</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/109" title="Objetivo: La Casa Blanca - Olympus Has Fallen" class="ajaxRequest"></a></div> <div class="profile-item-block  clearfix" id="w182">			
				<div class="delete-block remove_subscribe" movie-id="182"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-182.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">Mad Max: Furia en la carretera</span><span class="title-en">Mad Max: Fury Road</span><span class="profile-note-date">date of issue: <span>2015</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/182" title="Mad Max: Furia en la carretera - Mad Max: Fury Road" class="ajaxRequest"></a></div> <div class="profile-item-block  clearfix" id="w235">			
				<div class="delete-block remove_subscribe" movie-id="235"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-235.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">La serie Divergente: Insurgente</span><span class="title-en">Insurgent</span><span class="profile-note-date">date of issue: <span>2015</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/235" title="La serie Divergente: Insurgente - Insurgent" class="ajaxRequest"></a></div> <div class="profile-item-block  clearfix" id="w872">			
				<div class="delete-block remove_subscribe" movie-id="872"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-872.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">Salvando a Santa</span><span class="title-en">Saving Santa</span><span class="profile-note-date">date of issue: <span>2013</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/872" title="Salvando a Santa - Saving Santa" class="ajaxRequest"></a></div> <div class="profile-item-block  clearfix" id="w873">			
				<div class="delete-block remove_subscribe" movie-id="873"><a onclick="#" title="Remove">X</a></div>
				<div class="profile-item-thumb"><img src="uploads/movies/157x236-873.jpeg" alt=""></div>
				<div class="profile-item-titles"><span class="title-ge">Solo para dos</span><span class="title-en">Solo para dos</span><span class="profile-note-date">date of issue: <span>2013</span></span></div>
				<span class="profile-item-arrow"></span><a href="movies/detail/id/873" title="Solo para dos - Solo para dos" class="ajaxRequest"></a></div>                </div>
                <!-- #my-rates --> 
            </div>
            <!-- #my-favorites-and-rates -->       
            <!--#recomended-movies--> 
        </div>




            <!-- #profile-page-inner -->
            <div id="favorite-moments">
                <div id="favorite-moments-inner">
                    <div id="favorite-moments-header" class="clearfix"> 
                    <a href="<?=base_url()?>users/history" class="arrow_box right all-new-red ajaxRequest"><span>Todas</span></a>
                        <h2>Historia</h2>
                        <span class="movies-total"> Total: <span class="CountAllGam"><?=$countlists->sumHlist?></span></span>
                        
                	</div>

                <div id="favorite-moments-list" class="clearfix">

    <?php foreach ($history as $movie): ?>           
                        
		<div class="profile-item-block  clearfix" id="w68">
			<div class="delete-block remove_history" movie-id="68" table="user_rate"><a onclick="#" title="Remove">X</a></div>
		    <div class="profile-item-thumb">
		    <?php 
	                		if($movie->img!=""){
	                			echo '<img src="'.$movie->img.'" alt="">';
	                		}else{
	                			echo '<img src="'.base_url().'assets/images/nop-photo.png" alt="">';
	                		}
	                	 ?>
		    </div>
		    <div class="profile-item-titles">
		    	<span class="title-ge"><?=$movie->name?></span>
		    	<span class="title-en"><?=$movie->name?></span>
		    	<span class="profile-note-date">date of issue: <span><?=$movie->year?></span></span>
		    </div>
			<span class="profile-item-arrow"></span>
			<a href="<?=base_url()?>movies/view/<?=$movie->ID?>" title="Titanes del Pacífico - Pacific Rim" class="ajaxRequest"></a>
		</div>

	<?php endforeach ?>
			    </div>

                    <!-- #favorite-moments-list --> 
                </div>
                <!-- #favorite-moments-inner --> 
            </div>
            <div id="acountTitle"> <span class="acounTit">Mi cuenta</span><span class="acounEd">Editar información personal</span> </div>
        <div id="acountInfo">
      
        		


            <div id="editAvatar">
                 <?php
                if ($account->img=="") {
                    echo ' <img src="http://staticnet.adjara.com/imagesNew/man.png" alt="" id="user_image"> ';
                }else{
                    echo ' <img src="'.$account->img.'" alt="" id="user_image"> ';
                }
                ?>

                <span class="avatarTitle">Cambiar avatar</span> 
                <span class="avatarDelete">Avatar delete</span> 
                <span class="avatarUpdate">Subir nuevo</span>
              
                <div id="progressbox">
                    <div id="progressbar"></div>
                </div>
                <div id="output"></div>
            </div>
            <div class="editButt">
        			<button class="acount" style="display:block;" onClick="return(showchangePassword())">Change Password</button> 
        			<div class="clear"></div>
        			<button class="acount last-child" style="display:block;" onClick="return(showprofileEdit())">Edit Profile</button>

        			<div class="clear"></div>

        	</div>
            <div class="clear"></div>
        </div>
    </div>