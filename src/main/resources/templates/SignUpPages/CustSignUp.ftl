<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Customer SignUp</title>
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

<body>
	<#include "../NavBar.ftl">
	
	<#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 		<strong>Success!</strong>${insertStatus}
	</div>
	</#if>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3"
				style="background-color: #f2f2f2">
				<form data-toggle="validator" class="form-horizontal" role="form" id ="custSignUp" action="/registerCustomer" >
				<div class="form-group" align="center">
					    <label class="col-md-12"><h3>Customer SignUp</h3></label>
					  </div>
					  <div  class="form-group">
					    <label class="control-label col-md-3" for="Name">FirstName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="firstName" name ="firstName" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">MiddleName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" name = "middleName" id="middleName" placeholder="Enter MiddleName">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">LastName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="lastName" name ="lastName" placeholder="Enter LastName" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="custEmail" name ="email" placeholder="Enter email" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="custPassword" name="password" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-3" for="phone">Phone:</label>
					    <div class="col-md-6"> 
					      <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone Number" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-2" for="Address">Address:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="stAddress" name="stAddress" placeholder="Enter Address" required>
					    </div>
					    <label class="control-label col-md-2" for="city">City:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="city" name="city" placeholder="Enter city" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-2" for="state">State:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="state" name="state" placeholder="Enter State" required>
					    </div>
					    <label class="control-label col-md-2" for="zip">Zip:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="zip" name="zip" placeholder="Enter Zip" required>
					    </div>
					  </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-3 col-md-6">
					      <button type="button" class="btn btn-info" data-toggle="modal" data-target="#promoInfodialog">Tell Your PromoCode to Earn Store Credits</button>
					    </div>
					  </div>
					 	 <div class="modal fade" id="promoInfodialog" role="dialog">
						    <div class="modal-dialog">
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">How to get store credits or Free Meals</h4>
						        </div>
						        <div class="modal-body">
						          <p>Your personal promocode is ****. Tell it to others to earn store credits. 
						          You can always earn the most store credits by introducing a new restaurant to us.
						          When you become our associate, you can earn cash or even better build your own business
						          with our help receiving residual income to acheive your financial freedom.
						          Atleast, you can earn store credits by inviting your friends as our new customers, or
						          simply by giving your sincere reviews about the restaurants you ordered from.
						          </p>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
					  <div class="form-group"> 
					  <label class="control-label col-md-11" for="text">(If you have a promocode from others, welcome gift: get $1 off)</label>
					  </div>
					  <div class="form-group"> 
					   <label class="control-label col-md-3" for="promoCode">Promo Code:</label>
					  <div class=" col-md-6">
					      <input type="text" class="form-control" id="promoCode" name ="promoCode" placeholder="Enter promocode">
					    </div>
					   </div>
					   <div class="form-group">
					    <label class="control-label col-md-3" for="addChannel">Add Channel:</label>
					    <div class="col-md-6">
					     <select name="addChannel" id="addChannel" name="adChannel" class = "form-control"> 
                            <option value=""/>
                            <option value="Social Media">Social Media: Facebook, Twitter, WeChat etc. </option>
                            <option value="Sign on Car">Sign on Car </option>
                            <option value="Sign in Restaurant">Sign in Restaurant </option>
                            <option value="Roadside Sign">Roadside Sign </option>
                            <option value="By email/Text message">By email/Text message </option>
                        </select> 
					    </div>
					    </div>
					  <div class="form-group"> 
					    <div class="col-md-offset-3 col-md-6">
					      <button type="submit" class="btn btn-info">Create My Customer Account</button>
					    </div>
					  </div>
					</form>
				<br />
			</div>
		</div>
	</div>
	
</body>
</html>



