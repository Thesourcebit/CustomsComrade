$(document).ready(function(){

 //more particulares
 $("#bt1").click(function(){
 var no=$('#pno').val();
 if(no==""){document.getElementById("particulars").insertRow(-1).innerHTML = '<tr><td><input style="border: none" list="particulars_list" ></td> <td><input type="text" class="amount"/></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>'; }
 else if (no==0){}
  else{for (i=0;i<no;i++){
		document.getElementById("particulars").insertRow(-1).innerHTML = '<tr><td><input style="border: none" list="particulars_list" ></td> <td><input type="text" class="amount"/></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>';
	   }
   }
});

/*print */
/*$('.printInvoicenot working').click(function(){
            Popup($('.print')[0].outerHTML);
            function Popup(data) 
            {
                window.print();
                return true;
            }
        });*/

/* invoice pdf*/
var invoicetype="";
$("#invoice1").click(function(){
    invoicetype="1";
      $("#invoice1 img").css({"border":"4px solid black"});
      $("#invoice2 img").css({"border":"0px"});
      $("#invoice3 img").css({"border":"0px"});
        });

  $("#invoice2").click(function(){
    invoicetype="2";
      $("#invoice1 img").css({"border":"0px"});
      $("#invoice2 img").css({"border":"4px solid black"});
      $("#invoice3 img").css({"border":"0px"});
      });

  $("#invoice3").click(function(){
    invoicetype="3";
    $("#invoice1 img").css({"border":"0px"});
      $("#invoice2 img").css({"border":"0px"});
      $("#invoice3 img").css({"border":"4px solid black"});
      });

  $("#invoiceforward").click(function(){

    if(invoicetype=="3"){/*window.location.href="invoiceelegant";*/
     /*document.generateinvoice.action = "/invoiceelegant";*/ //or below
     $("#generateinvoice").attr('action','invoiceelegant');
      $("#generateinvoice").submit();
   
   } else if(invoicetype=="2"){
    $("#generateinvoice").attr('action','invoicesharp');
      $("#generateinvoice").submit();}
  
   else { Popup($('.print')[0].outerHTML);
            function Popup(data) 
            {  window.print();
                return true;
            }
  }
  
  
  }); 



//delete particulars
$(document).on('click', '.pdel', function() { //work for whole document object
// $('.pdel').click(function(){ //does not work when new paticulars are added
 console.log("Deleted");
 $(this).parent().parent().remove();
//window.alert("kb");
});


//change data list
$('#invotype').change(function(){
  var invotype=$("#invotype").val();

  var patilist=$('.patilist');

  var pagency = ["Sealing Strapping","Examination Expenses",
  "Documentation/ CMC","DEPB / FPS  Expenses","Transport","Delivery Expenses Forklifts","MISC. Expenses","Labour","Agency Charges"];

  var pcustoms = ["Custom Duty","CELIBI / CONCOR / CWC /","D.O. Charges & THC","Stamp / Bond Paper","Container Detention  Charges",
  "Transportion","CMC / EDI","Photocopy"];

 window.alert(invotype);
 if( invotype=="receipted"){
 	$('.particulars-agency').prop('id', '');
  $('.particulars-customs').prop('id', 'particulars_list');
    window.alert("if");
     for (var i=0; i<pcustoms.length; i++)
      	{/* $(patilist[i]).val(pcustoms[i]); window.alert("if for"+pcustoms[i])+" "+patilist[i];*/
			$(patilist[i]).val(pcustoms[i]);

  }

   }
 else {
 	$('.particulars-customs').prop('id', '');
    $('.particulars-agency').prop('id', 'particulars_list');
    window.alert("else");
    for (var i=0; i<=patilist.length; i++)
  		{ /*$(patilist[i]).val(pagency[i]); window.alert("else for"+pagency[i])+" "+ patilist[i];*/ 
  				$(patilist[i]).val(pagency[i]);
  			}
    }
});


});


function changedescrip() {
  var s = document.getElementById("medium").value;
  var a = document.getElementById("medium").value;
  if(s=="sea"){
  document.getElementById("fcllcl").innerHTML = "FCL/LCL";
  document.getElementById("fcllcltext").innerHTML = '<input id="fcllcll" type="text" name="fcl-lcl" path="fcl">';
  document.getElementById("sizetext").innerHTML = '<input type="text" name="size" path="size">';
  document.getElementById("size").innerHTML = "Size";
  document.getElementById("ContainerNo").innerHTML = "Container No. :";
  document.getElementById("Containertext").innerHTML = '<input type="text" name="CONTAINERNO" value="ContainerNo" path="ContainerNo">';
  document.getElementById("hbl").innerHTML = "HBL : ";
  document.getElementById("mbl").innerHTML = "MBL : ";	
		}
else{
	document.getElementById("size").innerHTML ='';	
    document.getElementById("fcllcl").innerHTML = '';
  	document.getElementById("fcllcltext").innerHTML = '';
	document.getElementById("sizetext").innerHTML = '';
	document.getElementById("Containertext").innerHTML = '';
	document.getElementById("ContainerNo").innerHTML = '';
	document.getElementById("hbl").innerHTML = 'HAWB : ';
	document.getElementById("mbl").innerHTML = 'MAWB : ';
		}
}


function amountadd() {
var x = document.getElementsByClassName("amount");
var i; 
var temp=0;
for (i = 0; i <x.length; i++) {
	/*x[i].style.backgroundColor = "green";*/
	temp+=parseInt(x[i].value);
/*	console.log(x);
	console.log(55);

*/

} 
document.getElementById("subtotal").value = temp;
amountgst();
}


/*Gst Calcutions*/
function amountgst()
{
  var gstrate= document.getElementById('pergst').value;
 
var message;
  message = document.getElementById("p01");
  message.innerHTML = "";

  window.alert(gstrate);
   try{
     if(gstrate == "")  throw "Empty field";
    if(isNaN(gstrate)) throw " number !";
     window.alert(gstrate);
  //var gstrate= document.getElementById('gstvalue').value; for   selection list
  var gst=(parseInt(gstrate));
  gst=gst/100;
/*  window.alert(gst);*/

var subttl = document.getElementById('subtotal').value;
if(isNaN(gstrate)) throw "in number";

var tot=(parseInt(subttl));

var tot_price=(tot*gst)+tot;

var gst1=(parseInt(tot_price));

total.value = tot_price;
}
    catch(err) {
    message.innerHTML = " enter GST % is  " + err;
  }

}
     function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
}


