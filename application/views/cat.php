<div class="container">
    <div class="row">
<?php 
	foreach ($blogs as $blog) {

?>
        <div class="col-md-6">
	       <div class="blog-post">
	       		<div class="blog-img">
	       			<img src="<?=$blog->img?>" class="img-responsive" >
	       		</div>
	       		<h2><a href="<?base_url()?>home/view/<?=$blog->ID?>"><?=$blog->name?></a> </h2>
	       </div>
        </div>

        <?php 
				}
        ?>

         </div>
</div>