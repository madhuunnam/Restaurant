<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
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
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="vendor/validator.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">
	<#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 		<strong>Associate SignUp Success!</strong>
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3"
				style="background-color: #f2f2f2">
				<form data-toggle="validator" class="form-horizontal" role="form" action = "/registerAssociate">
				<div class="form-group" align="center">
					    <label class="col-md-12"><h3>Associate SignUp</h3></label>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">FirstName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName" required autofocus>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">MiddleName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="middleName" name="middleName" placeholder="Enter MiddleName">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="Name">LastName:</label>
					    <div class="col-md-6">
					      <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter LastName" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="email">Email:</label>
					    <div class="col-md-6">
					      <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-md-3" for="pwd">Password:</label>
					    <div class="col-md-6"> 
					      <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
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
							<select name='state' id="state" class="form-control" required>
								<option value="">Select State</option>
								<option value="Alabama">Alabama</option>
								<option value="Alaska">Alaska</option>
								<option value="Alaska">Arizona</option>
								<option value="Arkansas">Arkansas</option>
								<option value="California">California</option>
								<option value="Colorado">Colorado</option>
								<option value="Connecticut">Connecticut</option>
								<option value="Delaware">Delaware</option>
								<option value="District Of Columbia">District Of Columbia</option>
								<option value="Florida">Florida</option>
								<option value="Georgia">Georgia</option>
								<option value="Hawaii">Hawaii</option>
								<option value="Idaho">Idaho</option>
								<option value="Illinois">Illinois</option>
								<option value="Indiana">Indiana</option>
								<option value="Iowa">Iowa</option>
								<option value="Kansas">Kansas</option>
								<option value="Kentucky">Kentucky</option>
								<option value="Louisiana">Louisiana</option>
								<option value="Maine">Maine</option>
								<option value="Maryland">Maryland</option>
								<option value="Massachusetts">Massachusetts</option>
								<option value="Michigan">Michigan</option>
								<option value="Minnesota">Minnesota</option>
								<option value="Mississippi">Mississippi</option>
								<option value="Missouri">Missouri</option>
								<option value="Montana">Montana</option>
								<option value="Nebraska">Nebraska</option>
								<option value="Nevada">Nevada</option>
								<option value="New Hampshire">New Hampshire</option>
								<option value="New Jersey">New Jersey</option>
								<option value="New Mexico">New Mexico</option>
								<option value="New York">New York</option>
								<option value="North Carolina">North Carolina</option>
								<option value="North Dakota">North Dakota</option>
								<option value="Ohio">Ohio</option>
								<option value="Oklahoma">Oklahoma</option>
								<option value="Oregon">Oregon</option>
								<option value="Pennsylvania">Pennsylvania</option>
								<option value="Rhode Island">Rhode Island</option>
								<option value="South Carolina">South Carolina</option>
								<option value="South Dakota">South Dakota</option>
								<option value="Tennessee">Tennessee</option>
								<option value="Texas">Texas</option>
								<option value="Utah">Utah</option>
								<option value="Vermont">Vermont</option>
								<option value="Virginia">Virginia</option>
								<option value="Washington">Washington</option>
								<option value="West Virginia">West Virginia</option>
								<option value="Wisconsin">Wisconsin</option>
								<option value="Wyoming">Wyoming</option>
							</select>
						</div>
					    <label class="control-label col-md-2" for="zip">Zip:</label>
					    <div class="col-md-3"> 
					      <input type="text" class="form-control" id="zip" name="zip" placeholder="Enter Zip" required>
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
					      <input type="text" class="form-control" id="promoCode" name="promoCode" placeholder="Enter promocode">
					    </div>
					   </div>
					   <div class="form-group">
					    <label class="control-label col-md-3" for="addChannel">Add Channel:</label>
					    <div class="col-md-6">
					     <select name="addChannel" id="addChannel" name="adChannel" class = "form-control"> 
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
					      <button type="submit" class="btn btn-info">Create My Associate Account</button>
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



