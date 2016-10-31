

<?php foreach ($result as $value) {?>
<div class="col-md-6" id="onlinemovie<?= $value->id ?>">
    <div class="panel panel-info">
        <div class="panel-heading"><?=$this->languages_model->getLanguages($value->language)->name?> 
        <strong>|</strong> Quality: <?=$this->quality_model->getQuality($value->quality)->name?>
         <strong>|</strong> Server: <?=$this->servers_model->getServers($value->servers)->name?> 
            <a data-link="<?=base_url()?>admin/movies/onlinemoviedelete" data-delid="<?= $value->id ?>" class="onlinemovieRemove  pull-right"><span  class="glyphicon glyphicon-remove-circle"></span></a>
        </div>
        <div class="panel-body">
                <div class="pull-left">
                    <small><?=$value->link?></small>
                </div>
           
        </div>
        
    </div>
    <hr/>
</div>

<?php } ?>

<script>

    $(document).ready(function () {

        $(".onlinemovieRemove").on("click", function () {

            var id = $(this).data("delid");
            var link = $(this).data("link");

            var dataString = 'id=' + id;
            if (confirm('Are you sure you want to delete this?')) {
                $.ajax({
                    type: "POST",
                    url: link,
                    data: dataString,
                    cache: false,
                    success: function () {
                        $('#onlinemovie' + id).hide();

                    }
                });
            }
        });
        });
        </script>
