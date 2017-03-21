<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="resources/css/mfw.css" />
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link href="//fonts.googleapis.com/css?family=Tangerine"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="resources/css/button.css">

</head>
<body background="resources/CssImages/bluebg.jpg">
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
			 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
				<a class="navbar-brand" href="#"></a>
			</div>
			<div class=" collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index">Home</a></li>
					<li class="dropdown" >
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact Us <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
					</li>
					<span class="nav-separator"></span>
					<li><a href="https://www.facebook.com/"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
					<li><a href="https://twitter.com/login"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
				</ul>
				
				<!-- <ul class="nav navbar-nav navbar-right"> -->
			
		 			<div class="header-text-container pull-right">
    								<p class="header-text"></p>
    								<p class="header-link">
    								<security:authorize access="isAuthenticated()">Welcome
    								<security:authentication property="principal.Username"/>
                                        </security:authorize>
                                <c:if test="${empty pageContext.request.userPrincipal}">
                                  <a href="login">Login</a>           </c:if>
                               <c:if test="${!empty pageContext.request.userPrincipal}">
                                      <a href="perform_logout">Logout</a>
                               </c:if>
		 			&nbsp;or&nbsp;<a href="userreg">create an account</a></p>
		 			</div>		
							
			</div>
		</div>
	</nav>

			
				

		<script src="resources/js/jquery-3.1.1.min.js"></script>
		<script src="resources/js/loginmodal.js" ></script>
<script src="resources/js/bootstrap.min.js" ></script>
<script src="resources/js/angular.min.js"></script>
			
	
	