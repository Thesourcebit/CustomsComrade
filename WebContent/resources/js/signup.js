$(document).ready(function(){
  
    var timeOut = null; // this used for hold few seconds to made ajax request

   //onkey press in email set username
    $('#email').on('keyup keydown blur change input keypress', function() {
      var eml=$("#email").val();
      var usr=eml.substr(0, eml.indexOf('@'));
      $("#username").val(usr);
     });


    $('#email').on('keyup keydown blur change input keypress', function() {
      
      var username=$("#username").val(); 
      if(username!=''){
       $('#spincheck').css({"visibility":""});
       $('#labelcheck').css({"visibility":""});

       clearTimeout(timeOut); timeOut= null;
       timeOut = setTimeout(is_available, 1000);
       console.log(timeOut+"email else"); 
      
      } else{
       $('#spincheck').css({"visibility":"hidden"});
       $('#labelcheck').css({"visibility":"hidden"});
         }

    });


    $('#username').on('keyup keydown blur change input keypress', function(){
      
      var username=$("#username").val();   
      if(username!=''){  
       $('#spincheck').css({"visibility":""});
       $('#labelcheck').css({"visibility":""});

       clearTimeout(timeOut); timeOut= null;
       timeOut = setTimeout(is_available, 1000);
       console.log(timeOut+"email else"); 

      } else{
       $('#spincheck').css({"visibility":"hidden"});
       $('#labelcheck').css({"visibility":"hidden"});

         }

     });

    
     $("#confirm").on('keyup keydown blur change input keypress', function() {
      
        var pas=$("#password").val();
        var conf=$("#confirm").val();
        if(pas==conf!=''){
            $("#password").css({"border":"2px solid green"});
            $("#confirm").css({"border":"2px solid green"});
            $("#passmatch").css({"visibility":""});
            $("#passmatch").css({"color":"green"});
            $("#passmatch").text("Password Matched");
            // $("input[type=submit]").removeAttr("disabled");
             //jughar to disable button if password matched but username not available
            clearTimeout(timeOut); timeOut= null;
            timeOut = setTimeout(is_available, 1000); 
        }
        else{
            $("#password").css({"border":"2px solid red"});
            $("#confirm").css({"border":"2px solid red"});
            $("#passmatch").css({"visibility":""});
            $("#passmatch").css({"color":"red"});
            $("#passmatch").text("Password Did Not Match");
            $("input[type=submit]").attr("disabled", "disabled");
           
        }
    
       });



             
  });


function is_available(){
  console.log("ajax fun");
  //get the username
  var username = $('#username').val();
 
  //make the ajax request to check is username available or not
   $.get("availusername", { username: username },
   function(result)
   { console.log(result+"ajax function")
     if(result == "true")
       {
         $('#labelcheck').text("UserName Available");
         $('#spincheck').css({"visibility":"hidden"});
         $('#username').css({"border":"2px solid green"});
         $("input[type=submit]").removeAttr("disabled");
        }
      else
       {
        $('#labelcheck').text("UserName Already Taken");
        $('#spincheck').css({"visibility":"hidden"});
        $('#username').css({"border":"2px solid red"});
        $("input[type=submit]").attr("disabled", "disabled");
        
        }

    });
 
}

