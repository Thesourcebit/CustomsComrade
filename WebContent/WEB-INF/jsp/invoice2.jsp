<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 
<html>
<head>
 <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" type="text/css" href="resources/css/invoice2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="resources\js\invoice2.js"></script>
</head>


<body>
<div id="invoice">

    
    <div class=" overflow-auto invoice">
        <div style="min-width: 1000px">
            <header>
                <div class="row">
                    <div class="col-sm-9">
                        <a target="_blank" href="https://lobianijs.com">
                            <img class="logo media" src="resources/img/logo/invoice2.png" data-holder-rendered="true">
                            </a>
                    </div>
                    <div class="col-sm-3 company-details">
                        <h4 class="name">
                            <a target="_blank" href=" ">
                            Arboshiki
                            </a>
                        </h4>
                        <div>455 Foggy Heights, AZ 85004, US</div>
                        <div>(123) 456-789</div>
                        <div>company@example.com</div>
                    </div>
                </div>
            </header><br>
            <main>
                <div class="row contacts">
                    <div class="col-sm-9 invoice-to">
                        <div class="text-gray-light">INVOICE TO:</div>
                        <h2 class="to">John Doe</h2>
                        <div class="address">796 Silver Harbour, TX 79273, US</div>
                        <div class="email"><a href="mailto:john@example.com">john@example.com</a></div>
                    </div>
                    <div class="col-sm-3 invoice-details">
                        <h4 class="">INVOICE NUMBER</h4>
                        <div class="date">Date of Invoice:
                            <input type="date" style="background-color: #ffff ;" ></div>
                            <div >Job No. <p">645685</p>
                            </div>
                        <div class="date">Job Date: <input type="date" style="background-color: #ffff ;">
                            </div></div>
                    </div>
                </div>

<!--  Description: table-->

            <div id="descriptiontable" class="row">
                <table ><tr style="background-color: #ffff;"><td ><h5><b> Description</b></h5></td>
                        <td ><input type="text" style="font-size:10pt;height:30px;width:500px ; background-color: #ffff;" value=" Type Description" name="description" path="description" ></td>
                        </tr></table>

                <table class="w3-table w3-bordered" >
                    <tbody>
                    <!-- <tr>
                        <td> Description </td>
                        <td ><input contenteditable="" style="font-size:10pt;height:30px;width:300px;" value="Description" name="description" path="description" ></td>
                        </tr> -->
                        <tr><br><br>
                            <td>Medium.</td>
                            <td> 
                                <select  style="background-color:#dddd" id="medium" onchange="changedescrip()">
                                    <option value="air">AIR</option>
                                    <option value="sea">SEA</option>
                                </select>
                            </td>
                            <td id="mbl">MAWB</td> <td> <input type="text" style="background-color:#E2E2E2" name="mbl" value="MBL" path="mbl">
                                </td><td>ASS.  Value : </td> <td> <input type="text"  style="background-color:#E2E2E2"name="ass_value" value="ass Value" path="assvalue">
                                </td></tr>
                                <tr>
                                    <td>Port:</td>
                                    <td> <input type="text" style="background-color: #ffff" name="txt_port" path="txtport"></td>

                                    <td id="hbl">HAWB :</td>
                                    <td> <input type="text" name="hbl" style="background-color: #ffff" value="hbl" path="hbl"></td>

                                    <td>Gross Weight:</td>
                                    <td> <input type="text" style="background-color: #ffff" name="GrossWeight" value="Gross Weight" path="GrossWeight"></td>
                                </tr>
                                <tr ><td id="fcllcl"></td>
                                    <td  id ="fcllcltext"></td>

                                    <td>B/E NO. :</td>
                                    <td> <input type="text" style="background-color:#E2E2E2" name="beno" value="BENO" path="beno"></td>

                                    <td>No. of PKG. :</td>
                                    <td> <input type="text" style="background-color:#E2E2E2" name="Noofpkg" value="NoofPKG" path="Noofpkg"></td>
                                </tr>
                                <tr>
                                    <td id="size"></td>
                                    <td id ="sizetext"></td>

                                    <td>Date:</td>
                                    <td><input type="date" style="background-color: #ffff" name="date3" path=""></td>
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

                        </div><!--  Description: table--><br><br><br>

<section class="row">
            <div class=" col-sm-6 col-md-4   particulars-checklist"><br><br><br><br>
                <!--  ENCLOSURE  table section-->
<table class="w3-table w3-bordered">
                   <tr class="text-left" style=" background-color: #ffff"><td class="text-left"><h5><b> ENCLOSURE</b></h5></td><td></td></tr>
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


<div class="col-sm-6 col-md-8 ">
                <table class="w3-table w3-bordered" border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr style=" background-color: #ffff">
                            <th>#</th>
                            <th   class="text-left"><span >PARTICULARS</span></th>
                       <th >TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="no">01</td>
                            <td >
                              Sealing Strapping
                                
                            </td>
                            <td >$0.00</td>
                            
                        </tr>
                        <tr>
                            <td class="no">02</td>
                            <td >Examination Expenses</td>
                            <td >$40.00</td>
                        </tr>
                        <tr>
                            <td class="no">03</td>
                            <td class="text-left">MISC. Expenses</td>
                                <td class="unit">$40.00</td>
                            </tr>
                        <tr>
                            <td class="no">04</td>
                            <td class="text-left"> Documentation/ CMC</td><td class="unit">$40.00</td></tr>
                             <tr>
                            <td class="no">05</td>
                            <td class="text-left"> DEPB / FPS  Expenses</td><td class="unit">$40.00</td></tr>

                            <td class="no">06</td>
                            <td class="text-left"> Transport</td><td class="unit">$40.00</td></tr>

                            <td class="no">07</td>
                            <td class="text-left"> Delivery Expenses Forklifts</td>
                            <td class="unit">$40.00</td></tr>

                            <td class="no">08</td>
                            <td class="text-left"> Labour</td><td class="unit">$40.00</td></tr>
                             <td class="no">09</td>
                            <td class="text-left">Agency Charges</td><td class="unit">$40.00</td></tr>
                            
                      
                    </tbody>

                    </table>
            </div>
            </section>

<div class="row">

<div class="col-md-8 " style="margin: 250px 0 0 0 ">

               <div class="thanks">Thank you!</div>
                <div class="notices">
                    <div>NOTICE:</div>
                    <div class="notice" style="font-size: 11px">Payment terms are 20 days from the date of invoiceMake all your cheques payble to :<br>
                         EXPRESS CARGO Please include the invoice number on your cheques Posted by: EXPRESS CARGO</div>
                </div>
            
            <footer style="font-size: 10px">
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
             <div >
                    <button class="button printInvoice noprint" style="vertical-align:middle"><span>Print Invoice</span></button>
                </div>
</div>





                <div sclass="col-md-4" >
                <div class="">
                    <p class="lead"><h5><b>Total due</b></h5></p>
                    <div class="table-responsive">
                        <table class="table divhover">
                          <tbody>
                            <tr>
                                <td>INVOICE DETAILS</td>
                                <td class="text-right">$ 14,900.00</td>
                            </tr>
                            <tr>
                                <td>TAX (12%)</td>
                                <td class="text-right">$ 1,788.00</td>
                            </tr>
                            <tr>
                                <td>ADVANCE</td>
                                <td class="pink text-right">(-) $ 4,688.00</td>
                            </tr>
                            <tr class="bg-grey bg-lighten-4">
                                <td class="text-bold-800">BALANCE</td>
                                <td class="text-bold-800 text-right">$ 12,000.00</td>
                            </tr>
                            <tr>
                                <td class="text-bold-800">Total</td>
                                <td class="text-bold-800 text-right"> $ 16,688.00</td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                    <div class="text-center">
                        <p>Authorized person</p>
                        <img src="resources/img/logo/invoice1_sig.jpg" alt="signature" style="height: 1px width:3px">
                        <h6>Amanda Orton</h6>
                        <p class="text-muted">Managing Director</p>
                    </div>
                </div>
                </div>
            </div>
</main>
            <!-- <div>
                <div class="thanks">Thank you!</div>
                <div class="notices">
                    <div>NOTICE:</div>
                    <div class="notice" style="font-size: 11px">Payment terms are 20 days from the date of invoiceMake all your cheques payble to :
                         EXPRESS CARGO Please include the invoice number on your cheques Posted by: EXPRESS CARGO</div>
                </div>
            
            <footer style="font-size: 10px">
                Invoice was created on a computer and is valid without the signature and seal.
            </footer>
</div> -->
               
        </div>
        <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
        <div></div>
    </div>
</div>
</body>
</html>