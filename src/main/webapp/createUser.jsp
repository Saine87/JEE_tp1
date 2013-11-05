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

		<form class="form-horizontal" action="CreationUser" method="get" name="userForm">
			<fieldset>
				<legend>New user :</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label">Firstname *</label>
					<div class="col-sm-10">
						<input type="text" name="firstName" class="form-control"
							placeholder="Firstname">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Lastname</label>
					<div class="col-sm-10">
						<input type="text" name="lastName" class="form-control"
							placeholder="Lastname">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Address *</label>
					<div class="col-sm-10">
						<input type="text" name="address" class="form-control"
							placeholder="Address">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Telephone *</label>
					<div class="col-sm-10">
						<input type="text" name="telephone" class="form-control"
							placeholder="Telephone">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="text" name="email" class="form-control"
							placeholder="Email">
					</div>
				</div>
				<div align="center" style="padding-bottom: 10px;">
					<input class="btn btn-default" type="submit" value="Submit"
						style="align=right"> <input class="btn btn-default" type="reset"
						value="Reset" style="align=right">
				</div>
			</fieldset>
		</form>

		<!--  Include footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>