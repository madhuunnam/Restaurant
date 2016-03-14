<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script type="text/javascript" src="vendor/validator.js"></script>

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
			<div class="col-sm-12"
				style="background-color: #f2f2f2">
				<form class="form-horizontal"  role="form" id ="restSignUp" action = "/updateRestProfile">
				
				<input type="hidden" name="restID" value= "<#if updateRestModel.restID??>${updateRestModel.restID}</#if>" />
				
					<div class="form-group" align="center">
					    <label class="col-sm-12"><h3>Restaurant Profile</h3></label>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="restName">Restaurant Name:</label>
					    <div class="col-sm-2">
					      <input type="text" class="form-control" id="restName" name="restName" value= "<#if updateRestModel.restName??>${updateRestModel.restName}</#if>" placeholder="Enter Restaurant Name" required>
					    </div>
					    <label class="control-label col-sm-2" for="altName">Alternate Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="altName" name ="altName" value="<#if updateRestModel.altName??>${updateRestModel.altName}</#if>" placeholder="Enter Alternate Name" />
					    </div>
					    <label class="control-label col-sm-2" for="year">Year Established:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="year" name="foundYear" value="<#if updateRestModel.foundYear??>${updateRestModel.foundYear}</#if>" placeholder="Enter Year" />
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="control-label col-sm-2" for="address">Address:</label>
					    <div class="col-sm-2">
					      <input type="text" class="form-control" id="stAddress" name="stAddress" value="<#if updateRestModel.stAddress??>${updateRestModel.stAddress}</#if>" placeholder="Enter Street Address" required>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">City:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="city" name="city" value="<#if updateRestModel.city??>${updateRestModel.city}</#if>" placeholder="Enter city" required>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">State:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="state" name="state" value="<#if updateRestModel.state??>${updateRestModel.state}</#if>" placeholder="Enter State" required>
					    </div>
					  </div>
					  <div class="form-group">
					  	<label class="control-label col-sm-2" for="pwd">Zip:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="zip" name="zip" value="<#if updateRestModel.zip??>${updateRestModel.zip}</#if>" placeholder="Zip" required>
					    </div>
					    <label class="control-label col-sm-2" for="email">Email:</label>
					    <div class="col-sm-2">
					      <input type="email" class="form-control" id="restEmail" name="email" value="<#if updateRestModel.email??>${updateRestModel.email}</#if>" placeholder="Enter email" required disabled>
					    </div>
					    <label class="control-label col-sm-2" for="pwd">Password:</label>
					    <div class="col-sm-2"> 
					      <input type="password" class="form-control" id="restPassword" name="password" value="<#if updateRestModel.password??>${updateRestModel.password}</#if>" placeholder="Enter password" required>
					    </div>
					  </div>
					  <div class="form-group">
					  <label class="control-label col-sm-2" for="securityQuest">Security Question:</label>
					    <div class="col-sm-2">
					     <select name="securityQuest" id="securityQuest" name="securityQuest" value="<#if updateRestModel.securityQuest??>${updateRestModel.securityQuest}</#if>" class = "form-control" required> 
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
					      <input type="text" class="form-control" id="answer" name="secAnswer" value="<#if updateRestModel.secAnswer??> ${updateRestModel.secAnswer}</#if>" placeholder="Enter Answer" required>
					    </div>
					    <label class="control-label col-sm-2" for="website">Website:</label>
					    <div class="col-sm-2"> 
					      <input type="url" class="form-control" id="website" name="website" value="<#if updateRestModel.website??>${updateRestModel.website}</#if>" placeholder="Enter website" >
					    </div>
					  </div>
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="phone1">Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="phone1" name="telephoneNumber" value="<#if updateRestModel.telephoneNumber??>${updateRestModel.telephoneNumber}</#if>" placeholder="Enter Phone Number" required>
					   </div>
					   <label class="control-label col-sm-2" for="phone2">Other Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="phone2" name="otherPhone" value="<#if updateRestModel.otherPhone??>${updateRestModel.otherPhone}</#if>" placeholder="Enter Other Number" >
					   </div>
					   <label class="control-label col-sm-2" for="category">Category:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="category" name="categories" value="<#if updateRestModel.categories??>${updateRestModel.categories}</#if>" placeholder="Enter Category" required>
					   </div>
					    </div>		    
						<div class="form-group">
					    <label class="control-label col-sm-2" for="openDays">Open Days:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="openDays" name="openTimes" placeholder="Enter Open Days">
					   </div>
					   <label class="control-label col-sm-2" for="phone2">Closed Days:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="closedDays" name="closedDays" value="<#if updateRestModel.closedDays??>${updateRestModel.closedDays}</#if>" placeholder="Enter Closed Days" >
					   </div>
					   <label class="control-label col-sm-2" for="ManagerName">Manager Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="mgrName" name="mgrName" value="<#if updateRestModel.mgrName??>${updateRestModel.mgrName}</#if>" placeholder="Enter Manager Name" >
					   </div>
					    </div>		
					   <div class="form-group">
					    <label class="control-label col-sm-2" for="ManagerPhone">Manager Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="mgrPhone" name="mgrPhone" value="<#if updateRestModel.mgrPhone??>${updateRestModel.mgrPhone}</#if>" placeholder="Enter Manager Phone">
					   </div>
					   <label class="control-label col-sm-2" for="Manager Email">Manager Email:</label>
					    <div class="col-sm-2"> 
					      <input type="email" class="form-control" id="mgrEmail" name="mgrEmail" value="<#if updateRestModel.mgrEmail??>${updateRestModel.mgrEmail}</#if>" placeholder="Enter Manager Email" >
					   </div>
					   <label class="control-label col-sm-2" for="ManagerPassword">Manager Password:</label>
					    <div class="col-sm-2"> 
					      <input type="password" class="form-control" id="mgrPwd" name="mgrPasswd" value="<#if updateRestModel.mgrPasswd??>${updateRestModel.mgrPasswd}</#if>" placeholder="Enter Manager Pwd" >
					   </div>
					    </div>	
					   <div class="form-group">
					   <label class="control-label col-sm-2" for="bankName">Bank Name:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankName" name="bankName" value="<#if updateRestModel.bankName??>${updateRestModel.bankName}</#if>" placeholder="Enter Bank Name" >
					   </div>
					   <label class="control-label col-sm-2" for="bankPhone">Bank Phone:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankPhone" name="bankPhone" value="<#if updateRestModel.bankPhone??>${updateRestModel.bankPhone}</#if>" placeholder="Enter Bank Phone" >
					   </div>
					   <label class="control-label col-sm-2" for="bankAddress">Bank Address:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankAddress" name="bandAddr" value="<#if updateRestModel.bankAddr??>${updateRestModel.bankAddr}</#if>" placeholder="Enter Bank Address" >
					   </div>
					    </div>
					    <div class="form-group">
					    <label class="control-label col-sm-2" for="bankRouteNum">Bank Route Number:</label>
					    <div class="col-sm-2"> 
					      <input type="text" class="form-control" id="bankRouteNum" name="bankRouteNum" value="<#if updateRestModel.bankRouteNum??>${updateRestModel.bankRouteNum}</#if>" placeholder="Enter Bank Route No" >
					   	</div>
					   	<label class="control-label col-sm-2" for="bankAcctNum">Bank Account Number:</label>
					    <div class="col-sm-2"> 		
					      <input type="text" class="form-control" id="bankAcctNum" name="bankAccNum" value="<#if updateRestModel.bankAccNum??>${updateRestModel.bankAccNum}</#if>" placeholder="Enter Bank Account No" >
					   	</div>
					   	<label class="control-label col-sm-1" for="hasMenu">Has Menu:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="hasMenu" name="hasMenu" value="<#if updateRestModel.hasMenu??>${updateRestModel.hasMenu}</#if>">
					   </div>
					    </div>
					    <div class="form-group">
					    <label class="control-label col-sm-1" for="Delivery">Delivery:</label>
					    <div class="col-sm-1"> 
					    	
					    <input type="checkbox" class="form-control" id="delivery" name="delivery" value="<#if updateRestModel.delivery??>${updateRestModel.delivery}</#if>" >
						
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryBy">Delivery By:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryBy" name="deliBy" value="<#if updateRestModel.deliBy??>${updateRestModel.deliBy}</#if>" placeholder="By">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryMin">Delivery Minimum:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryMin" name="deliMin" value="<#if updateRestModel.deliMin??>${updateRestModel.deliMin}</#if>" placeholder="Min">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryFee">Delivery Fee:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryFee" name="deliFee" value="<#if updateRestModel.deliFee??>${updateRestModel.deliFee}</#if>" placeholder="Fee">
					   </div>
					    </div>
					    <div class="form-group"> 
					    <label class="control-label col-sm-2" for="DeliveryPolicy">Delivery Policy:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryPolicy" name="deliPolicy" value="<#if updateRestModel.deliPolicy??>${updateRestModel.deliPolicy}</#if>" placeholder="Policy">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryRadius">Delivery Radius:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryRadius" name="deliRadius" value="<#if updateRestModel.deliRadius??>${updateRestModel.deliRadius}</#if>" placeholder="Radius">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryZips">Delivery Zips:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryZips" name="deliZips" value="<#if updateRestModel.deliZips??>${updateRestModel.deliZips}</#if>" placeholder="Zips">
					   </div>
					   <label class="control-label col-sm-2" for="DeliveryStreets">Delivery Streets:</label>
					    <div class="col-sm-1"> 
					      <input type="text" class="form-control" id="deliveryStreets" name="deliStreets" value="<#if updateRestModel.deliStreets??>${updateRestModel.deliStreets}</#if>" placeholder="Streets">
					   </div>
					   </div>
					   <div class="form-group">
					    <label class="control-label col-sm-1" for="PickUp">PickUp:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="pickUp" name="pickup" value="<#if updateRestModel.pickup??>${updateRestModel.pickup}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="DineIn">DineIn:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="dineIn" name="dineIn" value="<#if updateRestModel.dineIn??>${updateRestModel.dineIn}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="reserve">Reserve:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="reserve" name="reserve" value="<#if updateRestModel.reserve??>${updateRestModel.reserve}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="forKids">For Kids:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="forKids" name="forKids" value="<#if updateRestModel.forKids??>${updateRestModel.forKids}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="forGroup">For Group:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="forGroup" name="forGroup" value="<#if updateRestModel.forGroup??>${updateRestModel.forGroup}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="parking">Parking:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="parking" name="parking" value="<#if updateRestModel.parking??>${updateRestModel.parking}</#if>">
					   </div>
					   </div>
					    <div class="form-group">
					   <label class="control-label col-sm-1" for="wifi">Wifi:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="wifi" name="wifi" value="<#if updateRestModel.wifi??>${updateRestModel.wifi}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="breakfast">Breakfast:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="breakfast" name="breakfast" value="<#if updateRestModel.breakfast??>${updateRestModel.breakfast}</#if>">
					   </div>
					    <label class="control-label col-sm-1" for="lunch">Lunch:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="lunch" name="lunch" value="<#if updateRestModel.lunch??>${updateRestModel.lunch}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="dinner">Dinner:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="dinner" name="dinner" value="<#if updateRestModel.dinner??>${updateRestModel.dinner}</#if>">
					   </div>
					    <label class="control-label col-sm-1" for="lateNight">LateNight:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="lateNight" name="lateNight" value="<#if updateRestModel.lateNight??>${updateRestModel.lateNight}</#if>">
					   </div>
					   <label class="control-label col-sm-1" for="coupon">Coupon:</label>
					    <div class="col-sm-1"> 
					      <input type="checkbox" class="form-control" id="coupon" name="coupon" value="<#if updateRestModel.coupon??>${updateRestModel.coupon}</#if>">
					   </div>
					   </div>
					  <div class="form-group"> 
					    <div class="col-sm-offset-5 col-sm-4">
					     <br />
					      <button type="submit" class="btn btn-info">Update Restaurant</button>
					    </div>
					  </div>
					</form>
				<br/>
			</div>
		</div>
	</div>
	
</body>
</html>



