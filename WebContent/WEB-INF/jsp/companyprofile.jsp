<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%String username=(String)session.getAttribute("username");
System.out.println(username+"Company Profile");
 if (session==null || username==null)
 { response.sendRedirect("login"); }
 %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Custom fonts for this template -->
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts -->
<script src="resources/js/agency.min.js"></script>
<script src="resources/js/companyprofile.js"></script>

<!-- Custom fonts -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom css -->
<link href="resources/css/agency.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="resources/css/companyprofile.css">

<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/icon/commerceo.ico" />
</head>

<body id="page-top" onLoad="scrollDiv_init()">
 
 
	<div class="container-login100" style="background-image: url('resources/img/background/2.jpg');">


		<div class="login100-form-title"
			style="background-image: url(resources/img/background/1.jpg);">
			<br> <br> <br> <br> <br>


			<!-- Navigation -->
			<nav
				class="navbar navbar-expand-lg navbar-dark fixed-top navchange-color"
				id="mainNav">
				<div class="container">
					<a class="navbar-brand js-scroll-trigger" href="#page-top">CustomsComrade</a>
					<button class="navbar-toggler navbar-toggler-right" type="button"
						data-toggle="collapse" data-target="#navbarResponsive"
						aria-controls="navbarResponsive" aria-expanded="false"
						aria-label="Toggle navigation">
						Menu <i class="fas fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav text-uppercase ml-auto">
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="companyprofile">Home</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#clients">Clients</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#team">Team</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#bills">Bills</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="signout">Sign Out</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#settings">Settings</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="contactus">Feedback</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="company1">
				<div class="companylogo">
					<img src="resources/img/logo/express2.png" alt="Comapany Logo">
				</div>
				<div class="companyaddr">
					<h1>Comapany Name</h1>
					<p>D-29, New Palam Viahr
					<p />
					<p>Gurgaon, HR-122017
					<p />
				</div>
			</div>

		</div>

		<div class="divmain" style="background-size: cover; width: 100%;">


			<div class="container-fluid bootstrapgrid">
				<!-- onwer-left -->
				<div class="row">
					<div class="col-sm-4">
						<div class="owner-div commmondiv">
							<h3>${companyname}Admin</h3>
							<p>Prashant Mishra</p>
							<p>Rohit Negi</p>

						</div>

						<!-- Employees-left -->

						<div id="autoscroll" onMouseOver="pauseDiv()"
							onMouseOut="resumeDiv()" class="employee-div  commmondiv">
							<h3>${companyname}Employees</h3>
							<p>${username}</p>
							<p>Anubhav</p>
							<p>Satyam</p>
							<p>Rohti</p>
							<p>Jatin</p>
							<p>Denish</p>
							<p>Rahul</p>
							<p>Siddhart</p>
							<p>Shivangi</p>
							<p>Saurabh</p>
							<p>Priyanshu</p>
							<p>Shantanu</p>

						</div>
					</div>
					<!--client container-->
					<div class="col-sm-4">
					<div class="client-div commmondiv">
						<h3>${companyname}Clients</h3>
						<p>Divine Handicrafts</p>
						<p>Kalra Overseas</p>
						<p>NHC Foods Ltd</p>
						<p>C.R Enterprise</p>
						<p>Bhawal Steel Agency</p>
						<p>Marine Enterprise</p>
					</div>
					<div> <a href="invoice"><button type="button" style=" margin: 35px 0px 0px 90px; background: #9053c7;
    background: -webkit-linear-gradient(-135deg,#c560c0,#41f8d0);
    
    background: -moz-linear-gradient(-135deg,#c560c0,#41f8d0);
    background: linear-gradient(-135deg,#c560c0,#41f8d0);" class="btn btn-primary btngeneratein">Generate Invoice</button></a></div>
					</div>
					<!--recent container-->
					<div class="col-sm-3">
						<div class="resentbill-div commmondiv">
							<h3>Recent Invoice</h3>
							<p>Invoice 3214</p>
							<p>Invoice 1254</p>
							<p>Invoice 0124</p>
							<p>Invoice 1234</p>
							<p>Invoice 4587</p>
							<p>Invoice 5458</p>
						</div>

						<!--recent logins-->
						<div class="recentlogins-div commmondiv">
							<h3>Recent logins</h3>
							<p>${username}</p>
							<p>Rohit</p>
							<p>Prashant</p>
							<p>Rahul</p>
							<p>Priyanshu</p>
							<p>Jatin</p>
							<p>Anshika</p>
							<p>Shantanu</p>


						</div>
					</div>
				</div>

			</div>
		</div>
</body>
</html>