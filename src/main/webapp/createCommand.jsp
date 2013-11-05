<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="dist/css/dist/css/jumbotron-narrow.css" rel="stylesheet">
<title>Create User</title>
</head>
<body>
<body>
	<div class="container">
		<!--  Include header -->
		<jsp:include page="header.jsp"></jsp:include>

		<!--  Create user form -->
		<form class="form-horizontal" action="CreationCommand" method="get" name="userForm">
			<fieldset>
				<legend>New user :</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label">Firstname</label>
					<div class="col-sm-10">
						<input type="text" name="firstName" class="form-control" placeholder="Firstname">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Lastname</label>
					<div class="col-sm-10">
						<input type="text" name="lastName" class="form-control" placeholder="Lastname">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Address</label>
					<div class="col-sm-10">
						<input type="text" name="address" class="form-control" placeholder="Address">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Telephone</label>
					<div class="col-sm-10">
						<input type="text" name="telephone" class="form-control" placeholder="Telephone">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="text" name="email" class="form-control" placeholder="Email">
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend>New command :</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label">Date</label>
					<div class="col-sm-10">
						<input type="text" name="date" class="form-control" placeholder="Date"  disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Ammount</label>
					<div class="col-sm-10">
						<input type="text" name="ammount" class="form-control" placeholder="Ammount">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Payment mode</label>
					<div class="col-sm-10">
						<input type="text" name="paymentMode" class="form-control" placeholder="Payment mode">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Delivery mode</label>
					<div class="col-sm-10">
						<input type="text" name="deliveryMode" class="form-control"
							placeholder="Delivery mode">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Delivery status</label>
					<div class="col-sm-10">
						<input type="text" name="develiveryStatus" class="form-control"
							placeholder="Delivery status">
					</div>
				</div>
			</fieldset>
			<div align="center" style="padding-bottom: 10px;">
				<input class="btn btn-default" type="submit" value="Submit" style="">
				<input class="btn btn-default" type="reset" value="Reset" style="">
			</div>
		</form>

		<!--  Include footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>