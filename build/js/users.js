$(document).ready(function(){
	
var siteUrl = "http://peliculas.is/public";
var staticUrl = "http://peliculas.is/public";
var error = 0;	

	


  
	$(".avatarDelete").live( "click", function() {
		if($("#avatar").attr('src')!==staticUrl+'/images/man.png'){
		$.get( "user/deleteavatar",function(){
			$("#avatar").attr('src',staticUrl+'/images/man.png?timestamp='+ new Date().getTime());
			$("#user_avatar").attr('src',staticUrl+'/images/man.png?timestamp='+ new Date().getTime());
		})
		}
	})

  

	
	
	$("#Update").live( "click", function() {
		error = 0
		$arr = [];
		$fildsArray = ['password','inputDay','inputMonth','inputYear','gender']
		for(var i = 0; i < $fildsArray.length; i++){
			if(isEmpty($("#editForm #"+$fildsArray[i]).val())){
				error++
				if($fildsArray[i] == 'gender'){
					$("#editForm #genderS").css('border','1px solid red');
				}
				$("#editForm #"+$fildsArray[i]).css('border','1px solid red');
			}else{
				if($fildsArray[i] == 'gender'){
					$("#editForm #genderS").css('border','1px solid #DCDCDC');
				}
				$("#editForm #"+$fildsArray[i]).css('border','1px solid #DCDCDC');
				$arr[$fildsArray[i]] = $("#editForm #"+$fildsArray[i]).val();
			}
		}
		
		var nwPass = $("#editForm #new-password").val() 
		var rePass = $("#editForm #re-passwword").val() 
		
		if($("#editForm #password").val() == ""){
			$("#editForm #password").css('border','1px solid red')
			error++
		}else if (nwPass != ''){
			if(nwPass != rePass){
				error++
				$("#editForm #re-passwword").css('border','1px solid red');
			}else{
				$("#editForm #re-passwword").css('border','1px solid #DCDCDC');
			}
		}
		if(error == 0){
			$.post("user/update",{'password':$arr['password'],'day':$arr['inputDay'],'month':$arr['inputMonth'],'year':$arr['inputYear'],'gender':$arr['gender'],'act':'update','newpassword':nwPass,'repassword':rePass}, function(data) {
				if(isEmpty(data.success)){
					$("#editForm").find(".not").addClass('active');
					$("#editForm").find(".not").html(data.msg);
					$("#editForm").find("#"+data.a).css('border-color','red');
				
				} else{
					$("#editForm").find(".not").addClass('active');
					$("#editForm").find(".not").html(data.msg);
				}
			}, "json")
			
		}
		return(false)
	});
	
	
	$("#genderS input").live( "click", function(e) {
		e.stopPropagation()
		$(this).attr('checked',true);
		$("#genderS #gender").val($(this).val());
		//authorizationContent.genderEfect()
	});
	
	
  });	
	
	
	
	
	
	
		function isEmpty (val){
		return (val === undefined || val == null || val.length <= 0) ? true : false;
	}
	


var options = { 
		target:   '#output',   // target element(s) to be updated with server response 
		beforeSubmit:  beforeSubmit,  // pre-submit callback 
		uploadProgress: OnProgress,
		success: function(data) {
			afterSuccess(data); 
		},  // post-submit callback 
		resetForm: true,        // reset the form after successful submit 
		dataType: 'json',
		cache: true
	}; 
	
		
	
	function performClick(elemId,fileU) {
		$("#"+elemId)[0].reset();
		$("#"+fileU).click()
		$("#"+elemId).off('change').change(function(){
			$(this).ajaxSubmit(options);  			
			// return false to prevent standard browser submit and page navigation 
			return false; 		
		})
	}
	
	


function OnProgress(event, position, total, percentComplete){
	//Progress bar
	$('#progressbar').width(percentComplete + '%') //update progressbar percent complete
}

//after succesful upload
function afterSuccess(data){
	$("#output").html(data.msg);
	$("#avatar").removeAttr("src").attr('src','uploads/avatar/'+data.filename+'?timestamp='+ new Date().getTime());
	$("#user_avatar").removeAttr("src").attr('src','uploads/avatar/'+data.filename+'?timestamp='+ new Date().getTime());
	$('#progressbox').fadeTo( "slow", 0 ,function(){
		$(this).hide();
		$(this).css('opacity','0.9');
	})
	$('#submit-btn').show(); //hide submit button
	$('#loading-img').hide(); //hide submit button

}

//function to check file size before uploading.
function beforeSubmit(){
    //check whether browser fully supports all File API
   if (window.File && window.FileReader && window.FileList && window.Blob)
	{
		if( !$('#FileInput').val()) //check empty input filed
		{
			$("#output").html("Are you kidding me?");
			return false
		}
		
		var fsize = $('#FileInput')[0].files[0].size; //get file size
		var ftype = $('#FileInput')[0].files[0].type; // get file type
		
		//allow only valid image file types 
		switch(ftype)
        {
            case 'image/png': case 'image/gif': case 'image/jpeg': case 'image/pjpeg':
                break;
            default:
                $("#output").html("<b>"+ftype+"</b> Unsupported file type!");
				return false
        }
		
		//Allowed file size is less than 1 MB (1048576)
		if(fsize>1048576) 
		{
			$("#output").html("სურათის ზომა ცდება ლიმიტს (3MB)");
			return false
		}
		

		//Progress bar
		$('#progressbox').show(); //show progressbar
		$('#progressbar').width('0%'); //initial value 0% of progressbar
		//statustxt.html('0%'); //set status text
		//statustxt.css('color','#000'); //initial color of status text

				
		$('#submit-btn').hide(); //hide submit button
		$('#loading-img').show(); //hide submit button
		$("#output").html("");  
	}
	else
	{
		//Output error to older unsupported browsers that doesn't support HTML5 File API
		$("#output").html("Please upgrade your browser, because your current browser lacks some new features we need!");
		return false;
	}
}

//function to format bites bit.ly/19yoIPO
function bytesToSize(bytes) {
   var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
   if (bytes == 0) return '0 Bytes';
   var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
   return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
} 