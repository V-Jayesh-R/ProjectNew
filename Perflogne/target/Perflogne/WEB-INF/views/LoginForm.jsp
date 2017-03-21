<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/css/Demo.css">
	
</head>
<body  background="resources/CssImages/bluebg.jpg">
>
<%-- 
	<form name="loginForm" method="POST" 
action="perform_login">
Enter Username <input type="text" name="username"/>
Enter password <input type="password" name="password"/>
<input type="submit" value="sumbit"/>
</form>
 --%>
				
		<div class="container auth">
    <h1 class="text-center">LOGIN FORM <span></span> </h1>
    <div id="big-form" class="well auth-box">
      <form name="loginForm" method="POST" action="perform_login">
        <fieldset>

          <!-- Form Name -->
          <legend>ADD LOGIN CREDENTIALS</legend>


          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Username</label>  
            <div class="">
              <input id="textinput" name="username" placeholder="Username" class="form-control input-md" type="text">  
            </div>
          </div>

          <!-- Password input-->
          <div class="form-group">
            <label class=" control-label" for="passwordinput">Password</label>
            <div class="">
              <input id="passwordinput" name="password" placeholder="Password" class="form-control input-md" type="password">
            </div>
          </div>

         

          <div class="form-group">
            <label class=" control-label" for="singlebutton"></label>
            <div class="">
              <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
            </div>
          </div>
         

         
          

        </fieldset>
      </form>
    </div>
    <div class="clearfix"></div>
  </div>

			
<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/Demo.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	
</body>
</html>