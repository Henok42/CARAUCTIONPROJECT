<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CAR AUCTION SYSTEM</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<spring:url value='/resources/css/property.css' />" />
	
	<link type="text/css" rel="stylesheet"
	href="<spring:url value='/resources/css/main.css' />" />
	
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
     <img  class="group list-group-image" src="<c:url value="/resources/images/CAS.png"></c:url>" alt="CAS"  style = "width:100%"/>
    </div>
    <ul class="nav navbar-nav" style="padding: 15px;">
      <li class="active"><a href="<spring:url value='/' />">Home</a></li>
      
      <li><a href="<spring:url value='/login' />">Login</a></li>
        <li><a href="<spring:url value='/futureAuctions' />">Coming Auctions</a></li>
    </ul>
  </div>
  <a href="?language=en" >English</a>  |  <a href="?language=de_DE" >GERMANY</a> </a>
</nav>
