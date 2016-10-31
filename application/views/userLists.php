<div id="MainContent" style="margin-top:60px;">

<div id="watchlist-page-list" class="watch-later" data-atr="1">
			<?php foreach ($playlists as $playlist):?>
			
				<div class="profile-item-block watchlist-item-block " id="wl202">
	                <div class="delete-block" table="user_lists">
	                	<a href="javascript:void(0);" data-rec_id="202" title="წაშლა" class="deleteList">X</a>
	               	</div><!-- .delete-block -->

	                <div class="profile-item-thumb">
	                	<?php 
	                		if($playlist->img!=""){
	                			echo '<img src="'.$playlist->img.'" alt="">';
	                		}else{
	                			echo '<img src="'.base_url().'assets/images/nop-photo.png" alt="">';
	                		}
	                	 ?>
	                   
	                </div>
	                <!-- .profile-item-thumb -->
	                <div class="profile-item-titles">
	                    <span class="title-en" style="font-size:15px;"><?=$playlist->name?></span>
	                    <span class="title-en" style="font-size:20px;margin-top:20px;"><?=$playlist->sumlist?></span>
	                </div><!-- .profile-item-titles --><span class="profile-item-arrow"></span>
	                <a href="<?=base_url()?>users/listdetail/<?=$playlist->ID?>" class="ajaxRequest"></a>
	            </div>
		


				
			<?php endforeach ?>

			

		</div>		




	
</div>