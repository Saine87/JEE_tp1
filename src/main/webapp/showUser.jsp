<%@page import="com.polito.tp1.beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="dist/css/jumbotron-narrow.css" rel="stylesheet">
<title>Create User</title>
</head>
<body>
<body>
	<div class="container">
		<!--  Include header -->
		<jsp:include page="header.jsp"></jsp:include>

		<p>${ message }</p>
		
		<p> Using Java code </p>		
		<%User userJava = (User) request.getAttribute( "user" );%> 
		<p> Firstname : <% out.println(userJava.getFirstName()); %> </p>
		<p> Lastname : <% out.println(userJava.getLastName()); %> </p>
		<p> Address : <% out.println(userJava.getAddress()); %> </p>
		<p> Telephone : <% out.println(userJava.getTelephone());  %> </p>
		<p> email : <%= userJava.getEmail() %> </p>	
		<br/>
		
		<p> Using Standard Action </p>
		<jsp:useBean id="user" class="com.polito.tp1.beans.User" scope="request"></jsp:useBean>
		<p> Firstname :  <jsp:getProperty property="firstName" name="user"/> </p>
		<p> Lastname : <jsp:getProperty property="lastName" name="user"/> </p>
		<p> Address :  <jsp:getProperty property="address" name="user"/> </p>
		<p> Telephone : <jsp:getProperty property="telephone" name="user"/>
		<p> email : <jsp:getProperty property="email" name="user"/> </p>
		<br/>
		
		<p> Using Expression Language <p>
		<p>Firstname : ${ requestScope.user.firstName }</p>	
		<p>Lastname : ${ requestScope.user.lastName }</p>
		<p>Address : ${ requestScope.user.address }</p>
		<p>Telephone: ${ requestScope.user.telephone }</p>
		<p>Email : ${ requestScope.user.email }</p>
		<br/>

		<!--  Include footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>