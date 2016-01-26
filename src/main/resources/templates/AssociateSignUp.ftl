<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Associate SignUp</title>
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
				<form class="form-horizontal" role="form">
				<div class="form-group" align="center">
					    <label class="col-md-12"><h3>Associate SignUp</h3></label>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">FirstName:</label>
					    <div class="col-md-6">
					      <input type="required" class="form-control" id="assocFirstName" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">MiddleName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="assocMiddleName" placeholder="Enter MiddleName">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">LastName:</label>
					    <div class="col-md-6">
					      <input type="required" class="form-control" id="assocLastName" placeholder="Enter LastName">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">Address:</label>
					    <div class="col-md-8">
					      <input type="required" class="form-control" id="assocAddress" placeholder="Enter your Street Address, City, State, Zip">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="assocEmail" placeholder="Enter email">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="assocPassword" placeholder="Enter password">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone1">Phone:</label>
					    <div class="col-md-6">
					      <input type="mobile" class="form-control" id="assocPhone1" placeholder="Enter Phone Number">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone2">Other Phone:</label>
					    <div class="col-md-6">
					      <input type="phone" class="form-control" id="assocPhone2" placeholder="Enter Phone Number">
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-4 col-md-6">
					      <button type="submit" class="btn btn-info">Create Associate Account</button>
					    </div>
					  </div>
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



