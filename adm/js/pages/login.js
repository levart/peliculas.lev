//------------- Login.js -------------//
$(document).ready(function () {



    //* validation
    $('#login-form').validate({
        onkeyup: false,
        errorClass: 'error',
        validClass: 'valid',
        rules: {
            username: {required: true, minlength: 3},
            password: {required: true, minlength: 3}
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass("f_error");
            setTimeout(function () {
                boxHeight()
            }, 200)
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass("f_error");
            setTimeout(function () {
                boxHeight()
            }, 200)
        },
        errorPlacement: function (error, element) {
            $(element).closest('.form-group').append(error);
        }
    });


    $('.loginbtn').click(function () {


        $.ajax({
            type: "POST",
            url: $("#login-form").attr('action'),
            data: $("#login-form").serialize(),
            cache: false,
            success: function (json) {
                var arr = JSON.parse(json);
                //function success
                $('.message').html(arr.message).show();

                if (arr.status == 'success') {

                    window.setInterval(function () {
                        window.location = ("/admin/home/");
                    }, 1000);
                }


            }
        });

    });


});