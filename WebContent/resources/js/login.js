$(document).ready(function(){

	$("#login").click(function(){
		if($("#email").val()==""){
			$(".uname").addClass("error");
			$("#email").css({"border":"2px solid red"});
		}
		if($("#password").val()==""){
			$(".pass").addClass("error");
			$("#password").css({"border":"2px solid red"});
		}
	});
    
    
	// $("#email").change(function(){
	// 	var qw = $("#email").val();
	// 	var re1=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	// 	var re2=/[^a-zA-Z0-9]/;
		
	// 	if (re2.test(String(qw).toLowerCase()) ){
	// 		$("#ulable").text("Alphanumeric and Email Only");}
	//     });
        
        
	$("#email").click(function(){
		$("#email").css({"border":"2px solid #0AC986"});
		$("#password").css({"border":"2px solid #0AC986"});
		$(".wrongmsg").css({"display":"none"});
		$(".input").removeClass("error");
    });


       $('#email').on('keyup keydown blur change input keypress', function() {
        var eml=$("#email").val();
        var usr=eml.substr(0, eml.indexOf('@'));
        $("#username").val(usr);
        console.log(usr);
    });


});


	
document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 67 || 
             e.keyCode === 86 || 
             e.keyCode === 85 || 
             e.keyCode === 117)) {
            return false;
        } else {
            return true;
        }
};
$(document).keypress("u",function(e) {
  if(e.ctrlKey)
  {
return false;
}
else
{
return true;
}
});
