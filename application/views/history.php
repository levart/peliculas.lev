<div id="MainContent" style="margin-top:60px;">

<div id="favorites-page-inner" class="watch-later" data-atr="1">
		<div id="favorites-header" class="clearfix">
		<h2>Historia</h2>
		</div>
		<div id="favorites-list">

			
		
			<?php foreach ($history as $movie):
			?>
		<div class="profile-item-block  clearfix" id="w105">
                            <div class="delete-block remove_history" movie-id="105" table="user_rate"><a onclick="#" title="Remove">X</a></div>
                            <!-- .delete-block -->
                            <div class="profile-item-thumb"><img src="<?=$movie->img?>" alt=""></div>
                            <!-- .profile-item-thumb -->  
                            <div class="profile-item-titles"><span class="title-ge"><?=$movie->name?></span><span class="title-en">Arn:<?=$movie->name?></span><span class="profile-note-date">date of issue: <span><?=$movie->year?></span></span></div>
                            <!-- .profile-item-titles --><span class="profile-item-arrow"></span><a href="<?=base_url()?>movies/view/<?=$movie->ID?>" title="Arn: El caballero templario - Arn: Tempelriddaren"></a></div>  


				
			<?php endforeach ?>

			</div>

		</div>		




	
</div>