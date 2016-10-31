<?php foreach ($result as $value) {?>
<div class="col-md-6" id="torrent<?= $value->id ?>">
    <div class="panel panel-info">
        <div class="panel-heading">
        <?=$this->languages_model->getLanguages($value->language)->name?> 
         <strong>|</strong> 
        Quality: <?=$this->quality_model->getQuality($value->quality)->name?> <strong>|</strong>
         Size: <?=$value->size?> 
            <a data-link="/admin/movies/torrentdelete" data-delid="<?= $value->id ?>" class="torrentRemove  pull-right">
            <span  class="glyphicon glyphicon-remove-circle"></span></a>
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

        $(".torrentRemove").on("click", function () {

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
                        $('#torrent' + id).hide();

                    }
                });
            }
        });
        });
        </script>
