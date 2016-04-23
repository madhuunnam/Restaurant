<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	$(document).ready(function() {
		$('#forgotPwdBtn').click(function(){
			var userEmail = $('#email').val();
			if(userEmail == null || userEmail == ""){
				alert('Please enter your Email Address to request password !');
			}
			else{
				document.getElementById("form-signin").action = "/ForgotPasswordEmail";
				document.getElementById("form-signin").submit();
			}
		});
	});
</script>	
</head>
<body>
	<#include "NavBar.ftl">

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6" style="background-color: #f2f2f2">
				<form id="form-signin" class="form-signin"  action="/login"  method="post" >
				
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<h2 class="form-signin-heading">Please Login</h2>
					
					<#if RequestParameters.error ?? >
						<div class="alert alert-danger">
  								<strong> Invalid username and password !! </strong>
						</div>
					</#if>
					<#if RequestParameters.logout ??>
						<div class="alert alert-danger">
								<strong> You have been logged out </strong>
						</div>
					</#if>		
								
					<label for="email" class="sr-only">Email address</label> 
					<input type="text" id="email" name="email" class="form-control" placeholder="Email address"  autofocus> 
						
					<label for="password" class="sr-only">Password</label> 
					<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
						
						
					<label for="ForgotPassword" class="sr-only">Password</label> 
					<button type="button" id="forgotPwdBtn" class="btn btn-link">Forgot/Change Password?</button>
					
					
					<div class="radio">
						<label> <input type="radio" value="As Customer" name="radio" checked="checked">
							As Customer
						</label>
						<label> <input type="radio" value="As Restaurant Partner" name="radio">
							As Restaurant Partner
						</label>
						<!--<label> <input type="radio" value="As Associate" name="radio">
							As Associate
						</label>-->
						<label> <input type="radio" value="As Admin" name="radio">
							As Admin
						</label>
					</div>
					
					<button class="btn btn-md  btn-info " type="submit">Login</button>
					<div>
					<a href="<@spring.url '/SignupPage'/> ">New User? Create a Free Account</a></div>
					<br/>
				</form>
			</div>
		</div>
	</div>

</body>
</html>



