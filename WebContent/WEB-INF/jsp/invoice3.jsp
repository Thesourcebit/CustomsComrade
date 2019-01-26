<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<html>
<head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
<style type="text/css">
	input{border:none;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/invoice3.js"></script>

<link rel="stylesheet" href="resources/css/invoice3.css" type="text/css" />

</head>
<body >
<div class="content-body invoice overflow-auto">
	<section class="card">
	<div id="invoice-template" class="card-body">
		<!-- Invoice Company Details -->
		<div id="invoice-company-details" class="row">
			<div class="col-md-6 col-sm-12 text-center text-md-left">
				<div class="media">
					<img class="logo" src="resources/img/logo/plane1.png" alt="company logo" class="">
					<div class="media-body">
						<ul class="ml-2 px-0 list-unstyled">
							<li class="text-bold-800">CUSTOM CLEARING, FORWARDING & SHIPPING, BROKER</li>
							<li>83/2, Iind Floor, Vasanr Vihar,</li>
							<li>Vasant Nager,</li>
							<li>New Delhi- 110057,</li>
							<li>India</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-12 text-center text-md-right">
				<h2>INVOICE</h2>
				<p class="pb-0"># INV-001001</p>
			
			</div>
		</div>
		<!--/ Invoice Company Details -->

		<!-- Invoice Customer Details -->
		<div id="invoice-customer-details" class="row pt-2">
			<div class="col-sm-12 text-center text-md-left">
				<p class="text-muted">Bill To</p>
			</div>
			<div class="col-md-6 col-sm-12 text-center text-md-left">
				<ul class="px-0 list-unstyled">
					<li class="text-bold-800">Mr. Bret Lezama</li>
					<li>4879 Westfall Avenue,</li>
					<li>Albuquerque,</li>
					<li>New Mexico-87102.</li>
				</ul>
			</div>
			<div class="col-md-6 col-sm-12 text-center text-md-right">
				<p><span class="text-muted">Invoice Date :</span> 06/05/2016</p>
				<p><span class="text-muted">Job No.</span> 456465</p>
				<p><span class="text-muted">Jo Date :</span> 10/05/2016</p>
			</div>
		</div>
		<!--/ Invoice Customer Details -->

		<!-- Invoice Items Details -->




<!--  Description: table-->
			<div id="descriptiontable">
				<table class="w3-table w3-bordered">
					<tbody><tr>
						<td> Description </td>
						<td><input type="text" value="Description" name="description" path="description"></td>
						</tr><tr>
							<td>Medium :</td>
							<td> 
								<select id="medium" onchange="changedescrip()">
									<option value="air">AIR</option>
									<option value="sea">SEA</option>
								</select>
							</td>
							<td id="mbl">MAWB</td> <td> <input type="text" name="mbl" value="MBL" path="mbl">
								</td><td>ASS.  Value : </td> <td> <input type="text" name="ass_value" value="ass Value" path="assvalue">
								</td></tr>
								<tr>
									<td>Port:</td>
									<td> <input type="text" name="txt_port" path="txtport"></td>

									<td id="hbl">HAWB :</td>
									<td> <input type="text" name="hbl" value="hbl" path="hbl"></td>

									<td>Gross Weight:</td>
									<td> <input type="text" name="GrossWeight" value="Gross Weight" path="GrossWeight"></td>
								</tr>
								<tr><td id="fcllcl"></td>
									<td id ="fcllcltext"></td>

									<td>B/E NO. :</td>
									<td> <input type="text" name="beno" value="BENO" path="beno"></td>

									<td>No. of PKG. :</td>
									<td> <input type="text" name="Noofpkg" value="NoofPKG" path="Noofpkg"></td>
								</tr>
								<tr>
									<td id="size"></td>
									<td id ="sizetext"></td>

									<td>Date:</td>
									<td><input type="date" name="date3" path=""></td>
									<td id="ContainerNo"></td>
									<td id ="Containertext"></td>

								</tr>
								<!-- <tr>
									<td id="pod"></td>
									<td><input type="hidden" name="fcl-lcl" path="fcllcl"></td>
									<td>S/B NO. :</td>
									<td><input type="text" name="SBNO" value="SBNO" path="SBNO"></td>

								</tr>
								<tr>
									<td  id="pol"></td>
									<td><input type="hidden" name="size" path="seaemptycells"></td>

									<td>Date:</td>
									<td><input type="date" name="date3"></td>
								</tr> -->
							</tbody></table>

						</div><!--  Description: table-->








		<div id="invoice-items-details" class="pt-2">
			<section class="row">
            <div class=" col-sm-4 particulars-checklist">
                <!--  ENCLOSURE  table section-->

                    <h3>  ENCLOSURE</h3>
                    <table class="w3-table w3-bordered">

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
                            <!-- <td><form:checkbox name="Copy" value="Copy" path="copy"/></td>-->
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
                </div>
                <!--  ENCLOSURE   table section-->

				<div class="table-responsive col-sm-8">
					<table  class="w3-table w3-bordered">
					  <thead>
					    <tr>
					      <th>#</th>
					      <th>Item &amp; Description</th>
					      <th class="text-right">Amount</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>
					      	<p>Sealing Strapping</p>
					      </td>
					      <td class="text-right">$ 2400.00</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>
					      	<p>Examination Expenses</p>
					      </td>
					      <td class="text-right">$ 6500.00</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td>
					      	<p>Documentation/ CMC</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">4</th>
					      <td>
					      	<p>DEPB / FPS  Expenses</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">5</th>
					      <td>
					      	<p>Transport</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">6</th>
					      <td>
					      	<p>Delivery Expenses Forklifts</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">7</th>
					      <td>
					      	<p>MISC. Expenses</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">8</th>
					      <td>
					      	<p>Labour</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					    <tr>
					      <th scope="row">9</th>
					      <td>
					      	<p>Documentation/ CMC</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>

					    <tr>
					      <th scope="row">9</th>
					      <td>
					      	<p>Documentation/ CMC</p>
					      </td>
					      <td class="text-right">$ 6000.00</td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</section>
		</div>
			<!-- <div class="row">
			 -->	<!-- <div class="col-md-8 col-sm-12 text-center text-md-left">
					<p class="lead">Payment Methods:</p>
					<div class="row">
						<div class="col-md-8">
						<table class="table table-borderless table-sm">
							<tbody>
								<tr>
									<td>Bank name:</td>
									<td class="text-right">ABC Bank, USA</td>
								</tr>
								<tr>
									<td>Acc name:</td>
									<td class="text-right">Amanda Orton</td>
								</tr>
								<tr>
									<td>IBAN:</td>
									<td class="text-right">FGS165461646546AA</td>
								</tr>
								<tr>
									<td>SWIFT code:</td>
									<td class="text-right">BTNPP34</td>
								</tr>
							</tbody>
						</table>
						</div>
					</div>
				</div>
				 
			</div>-->
		

		<!-- Invoice Footer -->
		<div id="invoice-footer">
			<div class="row">


				<div class="col-md-7 col-sm-12">
					
					<div >
						<p>Authorized person</p>
						<img src="resources/img/logo/invoice1_sig.jpg" alt="signature" style="height: 1px width:2px" >
						<h6>Amanda Orton</h6>
						<p class="text-muted">Managing Director</p>
					</div>
					
					<h6>Terms &amp; Condition</h6>
					<label style="font-size: 10px">Payment terms are 20 days from the date of invoiceMake all your cheques payble to :
						<br> EXPRESS CARGO Please include the invoice number on your cheques Posted by:<br>
					 EXPRESS CARGO<br>
				<a href="mailto:someone@example.com">Contact information:<br>rohitnegi@gmail.com</a></label>
				</div>

				<div class="col-md-5 col-sm-12 text-center">
				<div class="">
					<p class="lead">Total due</p>
					<div class="table-responsive">
						<table class="table divhover">
						  <tbody>
						  	<tr>
						  		<td>Sub Total</td>
						  		<td class="text-right">$ 14,900.00</td>
						  	</tr>
						  	<tr>
						  		<td>TAX (12%)</td>
						  		<td class="text-right">$ 1,788.00</td>
						  	</tr>
						  	<tr>
						  		<td class="text-bold-800">Total</td>
						  		<td class="text-bold-800 text-right"> $ 16,688.00</td>
						  	</tr>
						  	<tr>
						  		<td>Payment Made</td>
						  		<td class="pink text-right">(-) $ 4,688.00</td>
						  	</tr>
						  	<tr class="bg-grey bg-lighten-4">
						  		<td class="text-bold-800">Balance Due</td>
						  		<td class="text-bold-800 text-right">$ 12,000.00</td>
						  	</tr>
						  </tbody>
						</table>
					</div>
					<div><button class="button printInvoice noprint" style="vertical-align:middle"><span>Print Invoice</span></button>
			</div>
				</div>
				</div>
			</div>
		</div>
		<!--/ Invoice Footer -->
	</div>
</section>		
        </div>
    </body>
        </html>