<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="externallinks.jsp"%>

<title></title>

<script>
$(document).ready(function(){
	$("#email").css({"border":"2px solid red"});
	$("#password").css({"border":"2px solid red"});
	$(".wrongmsg").css({"display":"block"});
	$(".wrongmsg").addClass("error");
	$(".uname").addClass("error");
	$(".pass").addClass("error");
	
	$("#email").click(function(){
		$(".wrongmsg").css({"display":"none"});
		$(".input").removeClass("error");
		});
		
	$("#password").click(function(){
		$(".wrongmsg").css({"display":"none"});
		$(".input").removeClass("error");
		
	});
	
	 $('#email').on('keyup keydown blur change input keypress', function() {
	        var eml=$("#email").val();
	        var usr=eml.substr(0, eml.indexOf('@'));
	        $("#username").val(usr);
	    });
	
	});
</script>
</head>
<body>
	<jsp:include page="login.jsp" />
</body>
</html>