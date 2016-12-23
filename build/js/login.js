// $(document).ready(function () {

//     $(this.closeLogin).click(function () {

//         $("#overlay-inner").click()
//         $("#authorizationContent > #loginDiv > .registrBtn").show()
//         $(authorizationContent.loginDiv).css('margin-top', '20px')
//         $(authorizationContent.mainDiv).removeClass('active')
//         $(".confirmRegistr").hide();
//     })

//     $(".registrTab").click(function (e) {
//         $("#authorizationContent > #loginDiv > .registrBtn").hide()

//         $(authorizationContent.loginDiv).animate({marginTop: '-250px'}, 700, function () {
//             $(authorizationContent.mainDiv).addClass('active');
//         })
//         e.preventDefault()
//     })

//     $(".upAuth").click(function () {
//         $(authorizationContent.loginDiv).animate({marginTop: '20px'}, 700, function () {
//             $("#authorizationContent > #loginDiv > .registrBtn").show()
//             $(authorizationContent.mainDiv).removeClass('active');

//         })
//     });
//     $("#login").click(function () {

//         var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
//         var element = $(this);
//         var username = $("#username").val();
//         var passwword = $("#passwword").val();

//         if (!username.match(mailformat)) {
//             $("#username").css('border', '1px solid red')
//         }
//         else {
//             $.post("user/login", $("#netLogin").serialize(), function (data) {

//                 if (data == 1) {
//                     window.location.reload();
//                 }
//                 else {
//                     $(".desc").html(data);
//                     $("#username").attr("style", "border: 1px solid red;");
//                     $("#passwword").attr("style", "border: 1px solid red;");
//                 }

//             });
//         }

//         return false;
//     });

//     $("#logout").click(function () {
//         $.post("user/logout", function (data) {
//             if (data == 1) {
//                 window.location = siteUrl ;
//             }
//         });
//     });


//     $("#registration").click(function () {
//         $.post("user/registration", $("#registrationForm").serialize(), function (data) {
//             $("#authorizationContent .success").html(data);
//             if (data) {
//                 $("#registrDiv").hide();
//             }
//         });
//         return false;
//     });
    
//     $(".ForgotPassword .fildsSend").click(function(){
//         alert('nksncsla');
//         // $.post("user/lostpassword", {email:$("#FormRecovery input[name=email]").val()}, function (data) {
//         //         $(".success_recovery").html(data);
//         // });
//     });

// });