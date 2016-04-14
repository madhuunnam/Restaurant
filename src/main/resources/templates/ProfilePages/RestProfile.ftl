<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="vendor/validator.js"></script>
<script type="text/javascript" src="javascript/restaurantPage.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		<#if updateRestModel.securityQuest??>
		if ( '${updateRestModel.securityQuest}' != null ){
			$('#securityQuest').val('${updateRestModel.securityQuest}');
			}
		</#if>
		<#if updateRestModel.state??>
		if ( '${updateRestModel.state}' != null ){
			$('#state').val('${updateRestModel.state}');
			}
		</#if>

		$('input:checkbox').change(function() {
		
        	if($(this).is(':checked') == true){
        		$(this).val('true');
        	}else{
        		$(this).val('false');
        	}
        	
   		});
   		$('.restaurantTimes').timepicker({defaultTime:false});
	});
</script>
</head>
<body>
	
	<#include "../NavBar.ftl"> <#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong>${showalert}
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="background-color: #f2f2f2">
				<form class="form-horizontal" role="form" id="updateRestaurantProfile">
				
					<input type='hidden' id='latitude' name='latitude' value="<#if updateRestModel.latitude??>${updateRestModel.latitude}</#if>" />
					<input type='hidden' id='longitude' name='longitude' value="<#if updateRestModel.longitude??>${updateRestModel.longitude}</#if>"  />
					<input type="hidden" name="restID" value="<#if updateRestModel.restID??>${updateRestModel.restID}</#if>" />

					<div class="form-group" align="center">
						<label class="col-sm-12"><h3>Restaurant Profile</h3></label>
					</div>
					<h4>Basic Information:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="restName">Restaurant Name:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="restName" name="restName" value="<#if updateRestModel.restName??>${updateRestModel.restName}</#if>" placeholder="Enter Restaurant Name" required>
						</div>
						<label class="control-label col-sm-2" for="altName">Alternate Name:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="altName" name="altName" value="<#if updateRestModel.altName??>${updateRestModel.altName}</#if>" placeholder="Enter Alternate Name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="year">Year Established:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="year" name="foundYear" value="<#if updateRestModel.foundYear??>${updateRestModel.foundYear}</#if>" placeholder="Enter Year" />
						</div>
						<label class="control-label col-sm-2" for="category">Category:</label>
						<div class="col-sm-2">
							<!--<input type="text" class="form-control" id="category" name="categories" value="<#if updateRestModel.categories??>${updateRestModel.categories}</#if>" placeholder="Enter Category" required>-->
							<button type="button" class="btn btn-default form-control" data-toggle="modal" data-target="#category">Select Cuisine</button>
							<div class="modal fade" id="category" role="dialog">
								<div class="modal-dialog">
		
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Select Cuisine</h4>
										</div>
										<div class="modal-body">
											<form role="form">
												<div class="checkbox col-sm-3">
													<label><input name='categories' type="checkbox" checked='true' value="All">All</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories' type="checkbox" value="American">American</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Asian">Asian</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Bagels">Bagels</label>
												</div>
												<div class="checkbox col-sm-3"">
													<label><input name='categories'  type="checkbox" value="Bakery">Bakery</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input  name='categories' type="checkbox" value="BBQ">BBQ</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Catonese">Catonese</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Chinese">Chinese</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Caribbean">Caribbean</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="CoffeeTea">Coffee & Tea</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Deli">Deli</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Dessert">Dessert</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Greek">Greek</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Grill">Grill</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Hamburgers">Hamburgers</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Healthy">Healthy</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Indian">Indian</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Italian">Italian</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Japanese">Japanese</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="LatinAmerican">LatinAmerican</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="LateNight">LateNight</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="LunchSpecials">LunchSpecials</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Mediterranean">Mediterranean</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Mexican">Mexican</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="MiddleEastern">MiddleEastern</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Noodles">Noodles</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Pasta">Pasta</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Pizza">Pizza</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Salads">Salads</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Sandwich">Sandwich</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Seafood">Sea food</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Smoothies">Smoothies</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Soup">Soup</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Szechwan">Szechwan</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Steak">Steak</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Subs">Subs</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Sushi">Sushi</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Vegetarian">Vegetarian</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Vietnamese">Vietnamese</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Wings">Wings</label>
												</div>
												<div class="checkbox col-sm-3">
													<label><input name='categories'  type="checkbox" value="Wraps">Wraps</label>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<br />
											<button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
										</div>
									</div>
								</div>
							</div>
					</div>
					<br/><br/>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Contact Information:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2 " for="address">Address:</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="stAddress" name="stAddress" value="<#if updateRestModel.stAddress??>${updateRestModel.stAddress}</#if>" placeholder="Enter Street Address" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">City:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="city" name="city" value="<#if updateRestModel.city??>${updateRestModel.city}</#if>" placeholder="Enter city" required>
						</div>
						<label class="control-label col-sm-2 " for="state">State:</label>
						<div class="col-sm-2">
							<select name="state" id="state" class="form-control" value="<#if updateRestModel.state??>${updateRestModel.state}</#if>" required>
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
						<label class="control-label col-sm-1" for="pwd">Zip:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="zip" name="zip" value="<#if updateRestModel.zip??>${updateRestModel.zip}</#if>" placeholder="Zip" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 " for="phone1">Phone:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="phone1" name="telephoneNumber" value="<#if updateRestModel.telephoneNumber??>${updateRestModel.telephoneNumber}</#if>"
								placeholder="Enter Phone Number" required>
						</div>
						<label class="control-label col-sm-2" for="phone2">Other Phone:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="phone2" name="otherPhone" value="<#if updateRestModel.otherPhone??>${updateRestModel.otherPhone}</#if>" placeholder="Enter Other Number">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="website">Website:</label>
						<div class="col-sm-5">
							<input type="url" class="form-control" id="website" name="website" value="<#if updateRestModel.website??>${updateRestModel.website}</#if>" placeholder="Enter website">
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Login Information:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2" for="email">Email:</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="restEmail" name="email" value="<#if updateRestModel.email??>${updateRestModel.email}</#if>" placeholder="Enter email" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Password:</label>
						<div class="col-sm-2">
							<input type="password" class="form-control" id="restPassword" name="password" value="<#if updateRestModel.password??>${updateRestModel.password}</#if>" placeholder="Enter password" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="securityQuest">Security Question:</label>
						<div class="col-sm-4">
							<select name="securityQuest" id="securityQuest" name="securityQuest" value="<#if updateRestModel.securityQuest??>${updateRestModel.securityQuest}</#if>" class="form-control" required>
								<option value="" />
								<option value="1">Name of your pet?</option>
								<option value="2">Your first car make?</option>
								<option value="3">Where did you meet your wife for the first time?</option>
								<option value="4">Which school did you graduate from?</option>
								<option value="5">What is your major?</option>
							</select>
						</div>
						<label class="control-label col-sm-2" for="ans">Answer:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="secAnswer" name="secAnswer" value="<#if updateRestModel.secAnswer??>${updateRestModel.secAnswer}</#if>" placeholder="Enter Answer" required>
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Manager Information:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="ManagerName">Manager Name:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="mgrName" name="mgrName" value="<#if updateRestModel.mgrName??>${updateRestModel.mgrName}</#if>" placeholder="Enter Manager Name">
						</div>
						<label class="control-label col-sm-2" for="ManagerPhone">Manager Phone:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="mgrPhone" name="mgrPhone" value="<#if updateRestModel.mgrPhone??>${updateRestModel.mgrPhone}</#if>" placeholder="Enter Manager Phone">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="Manager Email">Manager Email:</label>
						<div class="col-sm-2">
							<input type="email" class="form-control" id="mgrEmail" name="mgrEmail" value="<#if updateRestModel.mgrEmail??>${updateRestModel.mgrEmail}</#if>" placeholder="Enter Manager Email">
						</div>
						<label class="control-label col-sm-2" for="ManagerPassword">Manager Password:</label>
						<div class="col-sm-2">
							<input type="password" class="form-control" id="mgrPwd" name="mgrPasswd" value="<#if updateRestModel.mgrPasswd??>${updateRestModel.mgrPasswd}</#if>" placeholder="Enter Manager Pwd">
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Promo Information:</h4>
					<div class="form-group">
						<div class="col-sm-6 col-md-offset-2">
							<label class="control-label " for="promoCode">Your permanent personal PromoCode is :<#if updateRestModel.restAdmin.promoCode??>${updateRestModel.restAdmin.promoCode}</#if></label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6 col-md-offset-2">
							<label class="control-label " for="numRes">Number of Restaurants Recommended :<#if updateRestModel.restAdmin.numRes??>${updateRestModel.restAdmin.numRes}</#if></label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6 col-md-offset-2">
							<label class="control-label " for="numCust">Number of Customers Recommended :<#if updateRestModel.restAdmin.numCust??>${updateRestModel.restAdmin.numCust}</#if></label>
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Bank Information:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="bankName">Bank Name:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="bankName" name="bankName" value="<#if updateRestModel.bankName??>${updateRestModel.bankName}</#if>" placeholder="Enter Bank Name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="bankRouteNum">Bank Route Number:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="bankRouteNum" name="bankRouteNum" value="<#if updateRestModel.bankRouteNum??>${updateRestModel.bankRouteNum}</#if>" placeholder="Enter Bank Route No">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2 col-md-offset-2" for="bankAcctNum">Bank Account Number:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="bankAcctNum" name="bankAccNum" value="<#if updateRestModel.bankAccNum??>${updateRestModel.bankAccNum}</#if>" placeholder="Enter Bank Account No">
						</div>
					</div>
					<p>
						<i> &nbsp;&nbsp;We will automatically deposit the money for the meals that we have bought from you. Thanks !</i>
					</p>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Open Hours:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2">MONDAY</label> <label class="control-label col-sm-2">From:</label>
						
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="monFrom" name="monFrom" value="<#if updateRestModel.monFrom??>${updateRestModel.monFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="monTo" name="monTo" value="<#if updateRestModel.monTo??>${updateRestModel.monTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">TUESDAY </label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="tueFrom" name="tueFrom" value="<#if updateRestModel.tueFrom??>${updateRestModel.tueFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>								
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="tueTo" name="tueTo" value="<#if updateRestModel.tueTo??>${updateRestModel.tueTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">WEDNESDAY</label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="wedFrom" name="wedFrom" value="<#if updateRestModel.wedFrom??>${updateRestModel.wedFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="wedTo" name="wedTo" value="<#if updateRestModel.wedTo??>${updateRestModel.wedTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">THURSDAY</label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="thuFrom" name="thuFrom" value="<#if updateRestModel.thuFrom??>${updateRestModel.thuFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="thuTo" name="thuTo" value="<#if updateRestModel.thuTo??>${updateRestModel.thuTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">FRIDAY</label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="friFrom" name="friFrom" value="<#if updateRestModel.friFrom??>${updateRestModel.friFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="friTo" name="friTo" value="<#if updateRestModel.friTo??>${updateRestModel.friTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">SATURDAY</label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="satFrom" name="satFrom" value="<#if updateRestModel.satFrom??>${updateRestModel.satFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="satTo" name="satTo" value="<#if updateRestModel.satTo??>${updateRestModel.satTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">SUNDAY</label> <label class="control-label col-sm-2">From:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="sunFrom" name="sunFrom" value="<#if updateRestModel.sunFrom??>${updateRestModel.sunFrom?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
						<label class="control-label col-sm-2">To:</label>
						<div class="col-sm-2">
							<div class="input-group bootstrap-timepicker timepicker">
								<input type="text" class="form-control restaurantTimes" id="sunTo" name="sunTo" value="<#if updateRestModel.sunTo??>${updateRestModel.sunTo?date?string["h:mm a"]}</#if>" placeholder="HH:MM AM/PM">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="closedDays">Closed Days:</label>
						<div class="col-sm-3">
							<select multiple class="form-control" id="closedDays">
								<option>Monday</option>
								<option>Tuesday</option>
								<option>Wednesday</option>
								<option>Thursday</option>
								<option>Friday</option>
								<option>Saturday</option>
								<option>Sunday</option>
							</select>
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Can choose more than one:</h4>
					<div class="form-group">
						<label class="control-label col-sm-1" for="hasMenu">Has Menu:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="hasMenu" name="hasMenu" value="<#if updateRestModel.hasMenu??>${updateRestModel.hasMenu}" <#if (updateRestModel.hasMenu == 'true')> checked=true </#if> </#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-1" for="PickUp">PickUp:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="pickUp" name="pickup" value="<#if updateRestModel.pickup??>${updateRestModel.pickup}" <#if (updateRestModel.pickup == 'true')> checked=true </#if>  </#if>">
						</div>
						<label class="control-label col-sm-1" for="DineIn">DineIn:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="dineIn" name="dineIn" value="<#if updateRestModel.dineIn??>${updateRestModel.dineIn}" <#if (updateRestModel.dineIn == 'true')> checked=true </#if>  </#if>">
						</div>
						<label class="control-label col-sm-1" for="reserve">Reserve:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="reserve" name="reserve" <#if updateRestModel.reserve??>value="${updateRestModel.reserve}" <#if (updateRestModel.reserve == 'true')> checked=true </#if> </#if> >
						</div>
						<label class="control-label col-sm-1" for="forKids">For Kids:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="forKids" name="forKids" <#if updateRestModel.forKids??> value="${updateRestModel.forKids}" <#if (updateRestModel.forKids == 'true')> checked=true </#if> </#if>  >
						</div>
						<label class="control-label col-sm-1" for="forGroup">For Group:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="forGroup" name="forGroup" value="<#if updateRestModel.forGroup??>${updateRestModel.forGroup}" <#if (updateRestModel.forGroup == 'true')> checked=true </#if> </#if>">
						</div>
						<label class="control-label col-sm-1" for="parking">Parking:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="parking" name="parking" value="<#if updateRestModel.parking??>${updateRestModel.parking}" <#if (updateRestModel.parking == 'true')> checked=true </#if> </#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-1" for="wifi">Wifi:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="wifi" name="wifi" value="<#if updateRestModel.wifi??>${updateRestModel.wifi}</#if>" <#if (updateRestModel.wifi == 'true')> checked=true </#if> >
						</div>
						<label class="control-label col-sm-1" for="breakfast">Breakfast:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="breakfast" name="breakfast" value="<#if updateRestModel.breakfast??>${updateRestModel.breakfast}" <#if (updateRestModel.breakfast == 'true')> checked=true </#if> </#if>">
						</div>
						<label class="control-label col-sm-1" for="lunch">Lunch:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="lunch" name="lunch" value="<#if updateRestModel.lunch??>${updateRestModel.lunch}" <#if (updateRestModel.lunch == 'true')> checked=true </#if> </#if>">
						</div>
						<label class="control-label col-sm-1" for="dinner">Dinner:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="dinner" name="dinner" value="<#if updateRestModel.dinner??>${updateRestModel.dinner}" <#if (updateRestModel.dinner == 'true')> checked=true </#if>  </#if>">
						</div>
						<label class="control-label col-sm-1" for="lateNight">LateNight:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="lateNight" name="lateNight" value="<#if updateRestModel.lateNight??>${updateRestModel.lateNight}" <#if (updateRestModel.lateNight == 'true')> checked=true </#if> </#if>">
						</div>
						<label class="control-label col-sm-1" for="coupon">Coupon:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="coupon" name="coupon" value="<#if updateRestModel.coupon??>${updateRestModel.coupon}" <#if (updateRestModel.coupon == 'true')> checked=true </#if>  </#if>">
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>&nbsp;&nbsp;Delivery Details:</h4>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Delivery">Delivery Available:</label>
						<div class="col-sm-1">
							<input type="checkbox" class="form-control" id="delivery" name="delivery" value="<#if updateRestModel.delivery??>${updateRestModel.delivery}</#if>" <#if (updateRestModel.delivery == 'true')> checked=true </#if> >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="DeliveryMin">Delivery Minimum:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="deliveryMin" name="deliMin" value="<#if updateRestModel.deliMin??>${updateRestModel.deliMin}</#if>" placeholder="Min">
						</div>
						<label class="control-label col-sm-2" for="DeliveryFee">Delivery Fee:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="deliveryFee" name="deliFee" value="<#if updateRestModel.deliFee??>${updateRestModel.deliFee}</#if>" placeholder="Fee">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="DeliveryPolicy">Delivery Policy:</label>
						<div class="col-sm-2">
							<select name="deliPolicy" id="deliPolicy" name="deliPolicy" value="<#if updateRestModel.deliPolicy??>${updateRestModel.deliPolicy}</#if>" class="form-control" >
								<option value="">Select </option>
								<option value="Dollar">Dollar</option>
								<option value="Free Delivery">Free Delivery</option>
								<option value="Percent of Total">Percent of Total</option>
								<option value="Depend on Distance">Depend on Distance</option>
							</select>
						</div>
						<label class="control-label col-sm-2" for="DeliveryRadius">Delivery Radius:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="deliveryRadius" name="deliRadius" value="<#if updateRestModel.deliRadius??>${updateRestModel.deliRadius}</#if>" placeholder="Radius">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="DeliveryZips">Delivery Zips:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="deliveryZips" name="deliZips" value="<#if updateRestModel.deliZips??>${updateRestModel.deliZips}</#if>" placeholder="Zips">
						</div>
						<label class="control-label col-sm-2" for="DeliveryStreets">Delivery Streets:</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="deliveryStreets" name="deliStreets" value="<#if updateRestModel.deliStreets??>${updateRestModel.deliStreets}</#if>" placeholder="Streets">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-5 col-sm-4">
							<br />
							<button type="button" class="btn btn-info" onClick="onRestaurantProfileUpdate()";>Update Restaurant</button>
						</div>
					</div>
				</form>
				<br />
			</div>
		</div>
	</div>

</body>
</html>



