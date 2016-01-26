<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Admin SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
	<#include "NavBar.ftl">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3"
				style="background-color: #f2f2f2">
				<form class="form-signin">
					<h2 class="form-signin-heading">Create Your Account</h2>
					<label for="AdminName" class="sr-only">Admin Name</label>
						<input type="input" id="adminName" class="form-control" placeholder="Admin Name" required autofocus> 
					<label for="adminAddress" class="sr-only">Address</label> 
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<label for="adminEmail" class="sr-only">Email</label> 
						<input type="input" id="adminEmail" class="form-control" placeholder="Email" required> 
					<label for="adminAddress" class="sr-only">Address</label> 
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<label for="adminAddress" class="sr-only">Address</label> 
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<label for="adminAddress" class="sr-only">Address</label>
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<label for="adminAddress" class="sr-only">Address</label> 
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<label for="adminAddress" class="sr-only">Address</label>
						<input type="input" id="adminAddress" class="form-control" placeholder="Address" required> 
					<br />
					<button class="btn btn-md  btn-info " type="submit">Create My Admin Account</button>
				</form>
				<br />
			</div>
		</div>
	</div>
	<!-- /container -->

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>



