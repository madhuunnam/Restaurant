<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
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
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="background-color: #f2f2f2">
				<form class="form-group" role="form" id="signUpAsCust" action ="/getCustomerSignUpPage">
					<h2 class="text-center">SignUp</h2>
					<br/>
					<button class="btn btn-lg  btn-info btn-block" type="submit" onclick="onSignUpTypeCust();">Customer SignUp</button>
				</form>
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="background-color: #f2f2f2">
				<form class="form-group" role="form" id="signUpAsRest" action ="/getRestaurantSignUpPage">
					<button class="btn btn-lg  btn-info btn-block" type="submit" onclick="signUpTypeRest();">Restaurant SignUp</button>
				</form>
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="background-color: #f2f2f2">
				<form class="form-group" role="form" id="signUpAsAssc" action ="/getAssociateSignUpPage">
					<button class="btn btn-lg  btn-info btn-block" type="submit" onclick="onSignUpTypeAssc();">Associate SignUp</button>
				</form>
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="background-color: #f2f2f2">
				<form class="form-group" role="form" id="signUpAsAdmin" action ="/getAdminSignUpPage">
					<button class="btn btn-lg  btn-info btn-block" type="submit" onclick="onSignUpTypeAdmin();">Admin SignUp</button>
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



