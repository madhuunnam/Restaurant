<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Associate Profile</title>
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
<script type="text/javascript">
	$(document).ready(function() {
		$('#adChannel').val(${updateAssocModel.adChannel});
	});
</script>
</head>
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
				<form data-toggle="validator" class="form-horizontal" role="form" action = "/updateAssocProfile">
				
				<input type="hidden" name="assocID" value= "<#if updateAssocModel.assocID??>${updateAssocModel.assocID}</#if>" />
					
				<div class="form-group" align="center">
					    <label class="col-md-12"><h3>Associate SignUp</h3></label>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">FirstName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="firstName" name="firstName" value= "<#if updateAssocModel.firstName??>${updateAssocModel.firstName}</#if>" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">MiddleName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="middleName" name="middleName" value= "<#if updateAssocModel.middleName??>${updateAssocModel.middleName}</#if>" placeholder="Enter MiddleName">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">LastName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="lastName" name="lastName" value= "<#if updateAssocModel.lastName??>${updateAssocModel.lastName}</#if>" placeholder="Enter LastName" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="email" name="email" value= "<#if updateAssocModel.email??>${updateAssocModel.email}</#if>" placeholder="Enter email" required >
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="password" name="password" value= "<#if updateAssocModel.password??>${updateAssocModel.password}</#if>" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-3" for="phone">Phone:</label>
					    <div class="col-md-6"> 
					      <input type="text" class="form-control" id="phone" name="phone" value= "<#if updateAssocModel.phone??>${updateAssocModel.phone}</#if>" placeholder="Enter Phone Number" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-2" for="Address">Address:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="stAddress" name="stAddress" value= "<#if updateAssocModel.stAddress??>${updateAssocModel.stAddress}</#if>" placeholder="Enter Address" required>
					    </div>
					    <label class="control-label col-md-2" for="city">City:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="city" name="city" value= "<#if updateAssocModel.city??>${updateAssocModel.city}</#if>" placeholder="Enter city" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-2" for="state">State:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="state" name="state" value= "<#if updateAssocModel.state??>${updateAssocModel.state}</#if>" placeholder="Enter State" required>
					    </div>
					    <label class="control-label col-md-2" for="zip">Zip:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="zip" name="zip" value= "<#if updateAssocModel.zip??>${updateAssocModel.zip}</#if>" placeholder="Enter Zip" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-3 col-md-6">
					      <button type="button" class="btn btn-info">Tell Your PromoCode to Earn Store Credits</button>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-11" for="text">(If you have a promocode from others, welcome gift: get $1 off)</label>
					  </div>
					  <div class="form-group"> 
					   <label class="control-label col-md-3" for="promoCode">Promo Code:</label>
					  <div class=" col-md-6">
					      <input type="text" class="form-control" id="promoCode" name="promoCode" value= "<#if updateAssocModel.promoCode??>${updateAssocModel.promoCode}</#if>" placeholder="Enter promocode">
					    </div>
					   </div>
					   <div class="form-group">
					    <label class="control-label col-md-3" for="addChannel">Add Channel:</label>
					    <div class="col-md-6">
					     <select name="addChannel" id="addChannel" name="adChannel" value= "<#if updateAssocModel.adChannel??>${updateAssocModel.adChannel}</#if>" class = "form-control"> 
                            <option value=""/>
                            <option value="1">Social Media: Facebook, Twitter, WeChat etc. </option>
                            <option value="2">Sign on Car </option>
                            <option value="3">Sign in Restaurant </option>
                            <option value="4">Roadside Sign </option>
                            <option value="4">By email/Text message </option>
                        </select> 
					    </div>
					    </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-3 col-md-6">
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



