<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Admin Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="vendor/validator.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('#adChannel').val(${updateAdminModel.adChannel});
	});
</script>
<body>
	<#include "../NavBar.ftl">
	<#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 		<strong>Success!</strong>${showalert}
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3"
				style="background-color: #f2f2f2">
				<form  class="form-horizontal" role="form" action="/updateAdminProfile">
				
				<input type="hidden" name="adminId" value="<#if updateAdminModel.adminId ??>${updateAdminModel.adminId}</#if>" />
				<div class="form-group" align = "center">
					    <label class="col-md-12"><h3>Admin Profile</h3></label>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="firstName">First Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="firstName" name="firstName" value= "<#if updateAdminModel.firstName ??>${updateAdminModel.firstName}</#if>" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="middleName">Middle Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="middleName" name="middleName" value= "<#if updateAdminModel.middleName ??>${updateAdminModel.middleName}</#if>" placeholder="Enter MiddleName" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="lastName">Last Name:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="lastName" name="lastName" value= "<#if updateAdminModel.lastName ??>${updateAdminModel.lastName}</#if>" placeholder="Enter Last Name" required >
					    </div>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-md-3" for="Name">Address:</label>
					    <div class="col-md-8">
					      <input type="required" class="form-control" id="adminAddress" name="address" value= "<#if updateAdminModel.address ??>${updateAdminModel.address}</#if>" placeholder="Enter your Street Address, City, State, Zip" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="adminEmail" name="email" value= "<#if updateAdminModel.email ??>${updateAdminModel.email}</#if>" placeholder="Enter email" required >
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="adminPassword" name="password" value= "<#if updateAdminModel.password ??>${updateAdminModel.password}</#if>" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone1">Phone:</label>
					    <div class="col-md-6">
					      <input type="mobile" class="form-control" id="phone1" name="phone" value= "<#if updateAdminModel.phone ??>${updateAdminModel.phone}</#if>" placeholder="Enter Phone Number" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="phone2">Other Phone:</label>
					    <div class="col-md-6">
					      <input type="phone" class="form-control" id="phone2" value= "<#if updateAdminModel.otherPhone ??>${updateAdminModel.otherPhone}</#if>" placeholder="Enter Phone Number">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="secQuest">Security Ques1:</label>
					    <div class="col-md-6">
					     <select name="secQuest" id="secQuest" class = "form-control" value= "<#if updateAdminModel.secQuest ??>${updateAdminModel.secQuest}</#if>" required> 
                            <option value=""/>
                            <option value="1">Name of your pet </option>
                            <option value="2">Your first car make </option>
                            <option value="3">Where did you meet your wife for the first time </option>
                            <option value="4">Which school did you graduate from </option>
                            <option value="4">What is your major </option>
                        </select> 
					    </div>
					     <div class="col-md-3">
					      <input type="text" class="form-control" id="secAns" name="secAns" value= "<#if updateAdminModel.secAns ??>${updateAdminModel.secAns}</#if>" placeholder="Enter Answer" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-4 col-md-6">
					      <button type="submit" class="btn btn-info">Update Profile</button>
					    </div>
					  </div>
					</form>
				<br />
			</div>
		</div>
	</div>
	
</body>
</html>



