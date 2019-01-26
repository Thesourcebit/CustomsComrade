
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 


<html>
<head>
 <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
  <title>Invoice PDF</title>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/invoice3.css">


	<meta charset="utf-8">

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat"></link>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	<!-- Slow To Load Use on the page required-->
	<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script> -->

	<link rel="stylesheet" type="text/css" href="resources/css/invoice1.css" />
	<script type="text/javascript" src="resources/js/invoice1.js"></script>

	<title>Insert title here</title>
</head>
<body>
	<div class="print">

		<header>
			<h1>EXPRESS CARGO</h1>
			<div class="container1">
				<section class="logo">
					<img draggable="false" src="resources/img/logo/express1.png" alt="">
				</section>

				<section class="billfrom-address">
					<address contenteditable="">
						<h5> CUSTOM CLEARING, FORWARDING &amp; SHIPPING, BROKER</h5>
						<p>83/2, Iind Floor, Vasanr Vihar, Vasant Nager,</p>
						<p>New Delhi- 110057</p>
						<p>Contact:+91-9971129210 Email: kcmishra@gmail.com</p>
						<p>Pan No: QWE782BJ85F8F</p>
					</address>
				</section>
			</div>	
		</header>

		<div class="formmain container-fluid">
			<form action="invoicesharp" commandname="bill" method="post" name="generateinvoice" id="generateinvoice">

			<div class="row" id="container2" name="invoice"><!--   invoice table-->

				<section class="col-sm-8" id="billto">
					<h3>Bill TO</h3>
					<address contenteditable="">
						<p>RZG -218 Palam Colony ,Raj Nagar</p>
						<p>New Delhi-11047</p>
						<section><p>Emerilds<br>c/o Shantanu Gautam</p></section>
					</address>
				</section>

				<section class="col-sm-4" id="invoicedetails">
					<h3>INVOICE DETAILS</h3><table class="meta">

						<tbody><tr>
							<th><span >INVOICE No.</span> 	</th>
							<td><p path="invono"><input type="text" path="invoicenumber">
								<select id="invotype" >
								<option value="nonreceipted">Non Receipted</option>
								<option value="receipted">Receipted</option>
							</select></p>
						</td>
					</tr>
					<tr>
						<th><span >Date</span></th>
						<td><span ></span> <input type="date" path="invoicedate"></td>
					</tr>
					<tr>
						<th><span >Job No.</span></th>
						<td><span id="prefix" ><input type="text" path="jobno"></span></td>
					</tr>
					<tr>
						<th><span >Date</span></th>
						<td><span ></span> <input type="date" path="jobdate"></td>
					</tr>
				</tbody></table>
			</section>
		</div>

<!--  Description: table-->
			<div id="descriptiontable" class="row">
				<table>
					<tbody><tr>
						<td> Description </td>
						<td><input type="text" value="Description" name="description" path="description"></td>
						</tr><tr>
							<td>Medium :</td>
							<td> 
								<select id="medium" onchange="changedescrip()">
									<option value="air" path="air">AIR</option>
									<option value="sea"  path="sea">SEA</option>
								</select>
							</td>
							<td id="mbl">MAWB</td> <td> <input type="text" name="mbl" value="MBL" path="mawb">
								</td><td>ASS.  Value : </td> <td> <input type="text" name="ass_value" value="ass Value" path="assvalue">
								</td></tr>
								<tr>
									<td>Port:</td>
									<td> <input type="text" name="txt_port" path="txtport"></td>

									<td id="hbl">HAWB :</td>
									<td> <input type="text" name="hbl" value="hbl" path="hawb"></td>

									<td>Gross Weight:</td>
									<td> <input type="text" name="GrossWeight" value="Gross Weight" path="grossweight"></td>
								</tr>
								<tr><td id="fcllcl"></td>
									<td id ="fcllcltext"></td>

									<td>B/E NO. :</td>
									<td> <input type="text" name="beno" value="BENO" path="benumber"></td>

									<td>No. of PKG. :</td>
									<td> <input type="text" name="Noofpkg" value="NoofPKG" path="noofpkg"></td>
								</tr>
								<tr>
									<td id="size"></td>
									<td id ="sizetext"></td>

									<td>Date:</td>
									<td><input type="date" name="date3" path="datesbno"></td>
									<td id="ContainerNo"></td>
									<td id ="Containertext"></td>

								</tr>
								<tr>
									<td id="pod"></td>
									<td><input type="hidden" name="fcl-lcl" path="fcllcl"></td>
									<td>S/B NO. :</td>
									<td><input type="text" name="SBNO" value="SBNO" path="sbno"></td>

								</tr>
								<tr>
									<td  id="pol"></td>
									<td><input type="hidden" name="size" path="seaemptycells"></td>

									<td>Date:</td>
									<td><input type="date" name="date3" path="sbnodate"></td>
								</tr>
							</tbody></table>

						</div><!--  Description: table-->

			<div class="row particulars-checklist">
				<!--  ENCLOSURE  table section-->

				<section class="col-sm-6">
					<h3>  ENCLOSURE</h3><table>

						<tbody><tr>
							<td>Duplicate B/E</td>
							<td>  <input type="checkbox" path="duplicate" value="Duplicate"></td>
						</tr>
						<tr>
							<td>Exchange Control</td>
							<td> <input type="checkbox" value="Exchange" path="exchange"></td>
						</tr>
						<tr>
							<td>Copy</td>
							<td><input type="checkbox" name="Copy" value="Copy" path="copy"></td>
							
						</tr>
						<tr>
							<td>Bill of Loading</td>
							<td><input type="checkbox" name="Bill" value="Bill of Loading" path="billofloading"></td>
						</tr>

						<tr>
							<td>Invoice</td>
							<td><input type="checkbox" name="Invoice" value="Invoice" path="invoice"></td>
						</tr>
						<tr>
							<td>Packing List</td>
							<td><input type="checkbox" name="Packing" value="Packing" path="packing"></td>
						</tr>
						<tr>
							<td>T.R.6 Challan</td>
							<td><input type="checkbox" name="Challan" value="Challan" path="challan"></td>
						</tr>
						<tr>
							<td>Others Document</td>
							<td><input type="checkbox" name="Others_Document" value="Others_Document" path="othersdocument"></td>
						</tr>
					</tbody></table>
				</section><!--  ENCLOSURE   table section-->


				<section class="col-sm-6" ><!-- PARTICULARS	 table-->

					<h3> PARTICULARS </h3>

					<div class="addbtndiv">
					<input type="text" id="pno">
					<button id="bt1" class="button bt1">More</button>
				    </div>


					<datalist id="particulars_list" class="particulars-agency">
						<option value="Sealing Strapping" name="particular1"></option>
						<option value="Examination Expenses" name="particular2"></option>
						<option value="Documentation/ CMC" name="particular2"></option>
						<option value="DEPB / FPS  Expenses" name="particular3"></option>
						<option value="Transport" name="particular4"></option>
						<option value="Delivery Expenses Forklifts" name="particular5"></option>
						<option value="MISC. Expenses" name="particular6"></option>
						<option value="Labour" name="particular7"></option>
						<option value="Agency Charges" name="particular8"></option>
						<option value=" " ></option>
					</datalist>

					<datalist id="" class="particulars-customs">
						<option value="Custom Duty" name="particular1"></option>
						<option value="CELIBI / CONCOR / CWC /" name="particular2"></option>
						<option value="D.O. Charges & THC" name="particular3"></option>
						<option value="Stamp / Bond Paper" name="particular4"></option>
						<option value="Container Detention  Charges" name="particular5"></option>
						<option value="Transportion"name="particular6"></option>
						<option value="CMC / EDI" name="particular7"></option>
						<option value="Photocopy" name="particular8"></option>
						<option value=" "></option>
					</datalist>


					<table class="particulars" id="particulars">
						<tbody>
							<tr><th>PARTICULARS</th><th>AMOUNT</th></tr>
							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Sealing Strapping" path=""></td><td><input type="text" path="sealingstrapping" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Examination Expenses"></td> <td><input type="text"  path="examinationexpenses" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Documentation/ CMC"></td> <td><input type="text"  path="documentationcms" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="DEPB / FPS  Expenses"></td> <td><input type="text"  path="depbexpenses" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Transport"></td> <td><input type="text"  path="transport" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Delivery Expenses Forklifts"></td> <td><input type="text"  path="deliveryexpensesforklifts" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="MISC. Expenses"></td> <td><input type="text"  path="miscexpenses" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Labour"></td> <td><input type="text"  path="labour" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>

							<tr><td><input style="border: none" class="patilist" list="particulars_list" value="Agency Charges"></td> <td><input type="text"  path="agencycharges" class="amount"></td><td><button class="pdel"><i class="fa fa-close"></i></button></td></tr>
						</tbody>


					</table>

				</section><!--  PARTICULARS	 table section-->

			</div><!--  PARTICULARS	 table div-->

			<div class="row">

				<section class="col-sm-7">
					<p> <i>Payment terms are 20 days from the date of invoice</i></p>
					<p> <i>Make all your cheques payble to :  EXPRESS CARGO</i></p>
					<p><i> Please include the invoice number on your cheques</i></p>
					<p>Posted by: EXPRESS CARGO</p>
					<p>Contact information: <a href="mailto:someone@example.com">
						<br>someone@example.com</a></p>
						<p></p>
					</section>

					<section class="col-sm-5"><!--  total table-->
						<h3>  INVOICE DETAILS</h3><table>

							<tbody><tr>
								<td>SUBTOTAL</td>
								<td>  <input type="text" id="subtotal" name="SUBTOTAL" path="subtotal"></td>
							</tr>
							<tr>
								<td><p >Tax</br></br>
								<select id="gstvalue" 
								onchange="amountgst()" >
								<option value="9">GST/CGST
								</option>
								<option value="9">IGST/IGST
								</option>
								<option value="9">GST/SGST
								</option>
							</select></p></td> 
								<td><br><input type="text" id=pergst class="balance" name="gst" path="tax"></td>
							</tr>
							<tr>
								<td>ADVANCE</td>
								<td> <input type="text" class="advance" name="ADVANCE" path="advance"></td>
							</tr>
							<tr>
								<td>BALANCE</td>
								<td><input type="text" class="balance" name="BALANCE" path="balance"></td>
							</tr>
							<tr>
								<td>TOTAL</td>
								<td><input type="text" id="total" class="total" name="TOTAL" path="total"></td>
							</tr>
						</tbody></table>

						<button onclick="amountadd()">Total</button>

					</section><!--   total table-->
				</div>
			</form>
			 <div class="col-md-12 text-md-right">
                    <button onclick="document.getElementById('id01').style.display='block'" class="button hoverbutton noprint" style="vertical-align:middle"><span>Choose Invoice</span></button>
                </div>
		</div>
	</div>
<p id="p01"></p>

  <div class=" noprint" > 
    
    <div id="id01" class="w3-modal themecolor"   style="padding-top: 25px;"  >
      <div class="w3-modal-content w3-card-4 w3-animate-zoom prashantcolor" style="width:800px; height:530px; border-radius: 10px;">
        <header class="w3-container w3-teal prashantcolor" style="border-radius: 7px"> 
          <span onclick="document.getElementById('id01').style.display='none'" style="border-radius: 5px" class="w3-button w3-display-topright noprint">&times;</span>
          <h2>Select Invoice Format</h2>
        </header>
        <div class="container-fluid themecolor">
        <div class="">
          <div id="invoice1" class="col-sm-4 w3-third" style="" >
            <!-- <embed src="resources/pdf/invoice1.pdf" width="320" height="360" alt="pdf" 
            pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" style="width:100%;cursor:pointer" 
            onclick="onClick(this)" class="w3-hover-opacity">
             -->  
             <img src="resources/img/pdf/invoice1.png" style="width:100%;cursor:pointer;border-radius: 10px;" ondblclick="onClick(this)" class="w3-hover-opacity" width="320" height="360"> </div>
            
            <div id="invoice2" class="col-sm-4 w3-third " style="">
            <img src="resources/img/pdf/invoice2.png" style="width:100%;cursor:pointer;border-radius: 10px;" ondblclick="onClick(this)" class="w3-hover-opacity" width="320" height="360"> 
            <!-- <embed src="resources/pdf/invoice2.pdf" width="320" height="360" alt="pdf" 
            pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" 
            style="width:100%;cursor:pointer" 
            onclick="onClick(this)" class="w3-hover-opacity">
            </div> -->
            </div>
            <div id="invoice3" class="col-sm-4 w3-third" style="" >
                <!-- 
                	<embed id="onpdf3" src="resources/pdf/invoice3.pdf" width="320" height="360" alt="pdf"
                 pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" 
                 style="width:100%;cursor:pointer" 
                  class="w3-hover-opacity"> -->
                   <img src="resources/img/pdf/invoice3.png" style="width:100%;cursor:pointer;border-radius: 10px;" ondblclick="onClick(this)" class="w3-hover-opacity" width="320" height="360"> 
           
            </div>
            <div id="modal01" class="w3-modal"  onclick="this.style.display='none'">
            	<span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
            	<div class="w3-modal-content w3-animate-zoom">
            		<img id="img01" style="width:100%">
            	</div>
            </div>
              </div></div>

              <button id="invoiceforward" class="btnmsubmit btn-5" style="margin: 12px 0 0 340px; height: 45px;width: 100px; text-align: center; text-align"><span>Submit</button></span>
            </div>
          
          </div>
        </div>
      </div>
      <script type="text/javascript">



  </script>
</body>
	</html>