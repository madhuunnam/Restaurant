<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
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
	<#include "../NavBar.ftl">
	<#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 		<strong>Success!</strong>${adminInsertStatus}
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3"
				style="background-color: #f2f2f2">
				<form class="form-horizontal" role="form" action="/registerAdmin">
				<div class="form-group" align = "center">
					    <label class="col-md-12"><h3>Admin SignUp</h3></label>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="firstName">First Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="middleName">Middle Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="middleName" name="middleName" placeholder="Enter MiddleName" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="lastName">Last Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name" required >
					    </div>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-md-3" for="Name">Address:</label>
					    <div class="col-md-8">
					      <input type="required" class="form-control" id="adminAddress" name="address" placeholder="Enter your Street Address, City, State, Zip" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="adminEmail" name="email" placeholder="Enter email" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="adminPassword" name="password" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone1">Phone:</label>
					    <div class="col-md-6">
					      <input type="mobile" class="form-control" id="phone1" name="phone" placeholder="Enter Phone Number">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone2">Other Phone:</label>
					    <div class="col-md-6">
					      <input type="phone" class="form-control" id="phone2" placeholder="Enter Phone Number">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="secQuest">Security Ques1:</label>
					    <div class="col-md-6">
					     <select name="securityQuestion1" id="secQuest" name="secQuest" class = "form-control"> 
                            <option value=""/>
                            <option value="1">Name of your pet </option>
                            <option value="2">Your first car make </option>
                            <option value="3">Where did you meet your wife for the first time </option>
                            <option value="4">Which school did you graduate from </option>
                            <option value="4">What is your major </option>
                        </select> 
					    </div>
					     <div class="col-md-3">
					      <input type="required" class="form-control" id="secAns" name="secAns" placeholder="Enter Answer">
					    </div>
					  </div>
					  
					  
					  <div class="form-group"> 
					    <div class="col-md-offset-4 col-md-6">
					      <button type="submit" class="btn btn-info">Submit</button>
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



