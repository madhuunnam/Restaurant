<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="vendor/validator.js"></script>
	<script type="text/javascript" src="javascript/restaurantPage.js"></script>

</head>
<body>
	<#include "../NavBar.ftl">
	<#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
 		<strong>Success!</strong>${restInsertStatus}
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-sm-12"
				style="background-color: #f2f2f2">
				<form class="form-horizontal"  role="form" id ="restSignUp" >
				
					<input type='hidden' id='latitude' name='latitude' value='' />
					<input type='hidden' id='longitude' name='longitude' value='' />
					<div class="form-group" align="center">
					    <label class="col-sm-12"><h3>Restaurant SignUp</h3></label>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="restName">Restaurant Name:</label>
					    <div class="col-sm-2">
					      <input type="text" class="form-control" id="restName" name="restName" placeholder="Enter Restaurant Name" required>
					    </div>
					    <label class="control-label col-sm-2" for="altName">Alternate Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="altName" name ="altName" placeholder="Enter Alternate Name" >
					    </div>
					    <label class="control-label col-sm-2" for="year">Year Established:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="year" name="foundYear" placeholder="Enter Year" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="address">Address:</label>
					    <div class="col-sm-2">
					      <input type="text" class="form-control" id="stAddress" name="stAddress" placeholder="Enter Street Address" required>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">City:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="city" name="city" placeholder="Enter city" required>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">State:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="state" name="state" placeholder="Enter State" required>
					    </div>
					  </div>
					  <div class="form-group">
					  	<label class="control-label col-sm-2" for="pwd">Zip:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="zip" name="zip"placeholder="Zip" required>
					    </div>
					    <label class="control-label col-sm-2" for="email">Email:</label>
					    <div class="col-sm-2">
					      <input type="email" class="form-control" id="restEmail" name="email" placeholder="Enter email" required>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">Password:</label>
					    <div class="col-sm-2"> 
					      <input type="password" class="form-control" id="restPassword" name="password" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group">
					  <label class="control-label col-sm-2" for="securityQuest">Security Question:</label>
					    <div class="col-sm-2">
					     <select name="securityQuest" id="securityQuest" name="securityQuest" class = "form-control" required> 
                            <option value=""/>
                            <option value="1">Name of your pet?</option>
                            <option value="2">Your first car make? </option>
                            <option value="3">Where did you meet your wife for the first time? </option>
                            <option value="4">Which school did you graduate from?  </option>
                            <option value="5">What is your major? </option>
                        </select> 
					    </div>
					    <label class="control-label col-sm-2" for="ans">Answer:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="answer" name="secAnswer" placeholder="Enter Answer" required>
					    </div>
					    <label class="control-label col-sm-2" for="website">Website:</label>
					    <div class="col-sm-2"> 
					      <input type="url" class="form-control" id="website" name="website" placeholder="Enter website" >
					    </div>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="phone1">Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="phone1" name="telephoneNumber" placeholder="Enter Phone Number" required>
					   </div>
					   <label class="control-label col-sm-2" for="phone2">Other Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="phone2" name="otherPhone" placeholder="Enter Other Number" >
					   </div>
					   <label class="control-label col-sm-2" for="category">Category:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="category" name="categories" placeholder="Enter Category" required>
					   </div>
					    </div>		    
						<div class="form-group">
					    <label class="control-label col-sm-2" for="openDays">Open Days:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="openDays" name="openTimes" placeholder="Enter Open Days">
					   </div>
					   <label class="control-label col-sm-2" for="phone2">Closed Days:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="closedDays" name="closedDays" placeholder="Enter Closed Days" >
					   </div>
					   <label class="control-label col-sm-2" for="ManagerName">Manager Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="mgrName" name="mgrName" placeholder="Enter Manager Name" >
					   </div>
					    </div>		
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="ManagerPhone">Manager Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="mgrPhone" name="mgrPhone" placeholder="Enter Manager Phone">
					   </div>
					   <label class="control-label col-sm-2" for="Manager Email">Manager Email:</label>
					    <div class="col-sm-2"> 
					      <input type="email" class="form-control" id="mgrEmail" name="mgrEmail" placeholder="Enter Manager Email" >
					   </div>
					   <label class="control-label col-sm-2" for="ManagerPassword">Manager Password:</label>
					    <div class="col-sm-2"> 
					      <input type="password" class="form-control" id="mgrPwd" name="mgrPasswd" placeholder="Enter Manager Pwd" >
					   </div>
					    </div>	
					   <div class="form-group">
					   <label class="control-label col-sm-2" for="bankName">Bank Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankName" name="bankName" placeholder="Enter Bank Name" >
					   </div>
					   <label class="control-label col-sm-2" for="bankPhone">Bank Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankPhone" name="bankPhone" placeholder="Enter Bank Phone" >
					   </div>
					   <label class="control-label col-sm-2" for="bankAddress">Bank Address:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankAddress" name="bandAddr" placeholder="Enter Bank Address" >
					   </div>
					    </div>
					    <div class="form-group">
					    <label class="control-label col-sm-2" for="bankRouteNum">Bank Route Number:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankRouteNum" name="bankRouteNum" placeholder="Enter Bank Route No" >
					   	</div>
					   	<label class="control-label col-sm-2" for="bankAcctNum">Bank Account Number:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankAcctNum" name="bankAccNum" placeholder="Enter Bank Account No" >
					   	</div>
					   	<label class="control-label col-sm-1" for="hasMenu">Has Menu:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="hasMenu" name="hasMenu">
					   </div>
					    </div>
					    <div class="form-group">
					    <label class="control-label col-sm-1" for="Delivery">Delivery:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="delivery" name="delivery">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryBy">Delivery By:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryBy" name="deliBy" placeholder="By">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryMin">Delivery Minimum:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryMin" name="deliMin" placeholder="Min">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryFee">Delivery Fee:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryFee" name="deliFee" placeholder="Fee">
					   </div>
					    </div>
					    <div class="form-group"> 
					    <label class="control-label col-sm-2" for="DeliveryPolicy">Delivery Policy:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryPolicy" name="deliPolicy" placeholder="Policy">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryRadius">Delivery Radius:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryRadius" name="deliRadius" placeholder="Radius">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryZips">Delivery Zips:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryZips" name="deliZips" placeholder="Zips">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryStreets">Delivery Streets:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryStreets" name="deliStreets" placeholder="Streets">
					   </div>
					   </div>
					   <div class="form-group">
					    <label class="control-label col-sm-1" for="PickUp">PickUp:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="pickUp" name="pickup">
					   </div>
					   <label class="control-label col-sm-1" for="DineIn">DineIn:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="dineIn" name="dineIn" >
					   </div>
					   <label class="control-label col-sm-1" for="reserve">Reserve:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="reserve" name="reserve">
					   </div>
					   <label class="control-label col-sm-1" for="forKids">For Kids:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="forKids" name="forKids">
					   </div>
					   <label class="control-label col-sm-1" for="forGroup">For Group:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="forGroup" name="forGroup">
					   </div>
					   <label class="control-label col-sm-1" for="parking">Parking:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="parking" name="parking">
					   </div>
					   </div>
					    <div class="form-group">
					   <label class="control-label col-sm-1" for="wifi">Wifi:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="wifi" name="wifi">
					   </div>
					   <label class="control-label col-sm-1" for="breakfast">Breakfast:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="breakfast" name="breakfast">
					   </div>
					    <label class="control-label col-sm-1" for="lunch">Lunch:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="lunch" name="lunch">
					   </div>
					   <label class="control-label col-sm-1" for="dinner">Dinner:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="dinner" name="dinner">
					   </div>
					    <label class="control-label col-sm-1" for="lateNight">LateNight:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="lateNight" name="lateNight">
					   </div>
					   <label class="control-label col-sm-1" for="coupon">Coupon:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="coupon" name="coupon">
					   </div>
					   </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-5 col-sm-4">
					     <br />
					      <button type="button" class="btn btn-info" onClick="onRestaurantSignUp();" >Create My Restaurant</button>
					    </div>
					  </div>
					</form>
				<br/>
			</div>
		</div>
	</div>
	<!-- /container -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>



