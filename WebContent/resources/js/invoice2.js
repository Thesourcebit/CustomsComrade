
function changedescrip() {
  var s = document.getElementById("medium").value;
  var a = document.getElementById("medium").value;
  if(s=="sea"){
  document.getElementById("fcllcl").innerHTML = "FCL/LCL";
  document.getElementById("fcllcltext").innerHTML = '<input id="fcllcll" style="background-color: #E2E2E2" type="text" name="fcl-lcl" path="fcl">';
  document.getElementById("sizetext").innerHTML = '<input type="text"  style="background-color:#FFFFFF" name="size" path="size">';
  document.getElementById("size").innerHTML = "Size";
  document.getElementById("ContainerNo").innerHTML = "Container No. :";
  document.getElementById("Containertext").innerHTML = '<input type="text" style="background-color:#FFFFFF" name="CONTAINERNO" value="ContainerNo" path="ContainerNo">';
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


$(document).ready(function(){$('.printInvoice').click(function(){
            Popup($('.invoice')[0].outerHTML);
            function Popup(data) 
            {
                window.print();
                return true;
            }
        });
})
