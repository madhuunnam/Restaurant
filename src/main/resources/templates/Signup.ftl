<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/clickFunctions.js"></script>
</head>
<body>
	<#include "NavBar.ftl">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6" style="background-color: #f2f2f2">
				<form class="form-signin">
					<h2 class="form-signin-heading">Create Your Account</h2>
					<label for="inputEmail" class="sr-only">Email address</label> <input
						type="email" id="inputEmail" class="form-control"
						placeholder="Email address" required autofocus> <label
						for="inputPassword" class="sr-only">Password</label> <input
						type="password" id="inputPassword" class="form-control"
						placeholder="Password" required>
						<br />
					<button class="btn btn-md  btn-info " type="submit">Create My Account</button>
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



