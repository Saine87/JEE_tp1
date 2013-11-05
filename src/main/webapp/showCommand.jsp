<%@page import="com.polito.tp1.beans.User"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="dist/css/jumbotron-narrow.css" rel="stylesheet">
<title>Create command</title>
</head>
<body>
<body>
	<div class="container">
		<!--  Include header -->
		<jsp:include page="header.jsp"></jsp:include>

		<p>${ message }</p>
		
	
		<p> Using Expression Language <p>
		<p>Firstname : ${ requestScope.user.firstName }</p>	
		<p>Lastname : ${ requestScope.user.lastName }</p>
		<p>Address : ${ requestScope.user.address }</p>
		<p>Telephone: ${ requestScope.user.telephone }</p>
		<p>Email : ${ requestScope.user.email }</p>
		<br/>
		
		<p>Date : ${ requestScope.command.date } </p>
		<p>Ammount: ${ requestScope.command.ammount } </p>
		<p>Payment mode : ${ requestScope.command.paymentMode } </p>
		<p>Delivery mode : ${ requestScope.command.deliveryMode } </p>
		<p>Delivery status : ${ reuqestScope.command.deliveryStatuc } </p>

		<!--  Include footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>