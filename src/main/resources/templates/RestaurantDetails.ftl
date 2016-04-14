<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/javascript/restaurantPage.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
   		$('.restaurantTimes').timepicker({defaultTime:false});
	});
</script>
</head>
<body>
	<#include "NavBar.ftl">
	<div class="container text-left">
		<div class="jumbotron">
			<div class="col-md-2">
			<img src="/images/restimages/${rest.restID}" class="img-rounded" alt="Icon" width="100" height="100">
			</div>
			<div class="col-md-6">
				<h2>
					<strong><#if rest.restName ??>${rest.restName}</#if></strong>
				</h2>
				<div class="row">
					<div class="col-md-3">
						<strong>Reviews:<#if rest.restAdmin.numRev??>${rest.restAdmin.numRev}</#if></strong>
					</div>
					<div class="col-md-3">
						<strong>Yelp:<#if rest.restAdmin.numYelp??>${rest.restAdmin.numYelp}</#if></strong>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<strong>Dine In: </strong><#if rest.dineIn ??>${rest.dineIn}</#if>
					</div>
					<!--<div class="col-md-3">
						<strong>Comments:</strong>
					</div>-->
					<div class="col-md-3">
						<strong>Pick Up: </strong><#if rest.pickup ??>${rest.pickup}</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<strong>Delivery: </strong><#if rest.delivery ??>${rest.delivery}</#if>
					</div>
				</div>
			 </div>
			 <div class="col-md-4">
				<div class="row">
					<div class="col-md-6">
						<strong>Open Hours: </strong>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<#if rest.monFrom ??><#else><i>Mon: Closed</i></#if><#if rest.monTo ??>
						<i>Mon From: </i>${rest.monFrom?date?string["h:mm a"]}<i> To: </i>${rest.monTo?date?string["h:mm a"]}
						</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.tueFrom ??><#else><i>Tue: Closed</i></#if><#if rest.tueTo ??>
						<i>Tue From: </i>${rest.tueFrom?date?string["h:mm a"]}<i> To: </i>${rest.tueTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.wedFrom ??><#else><i>Wed: Closed</i></#if><#if rest.wedTo ??>
						<i>Wed From: </i>${rest.wedFrom?date?string["h:mm a"]}<i> To: </i>${rest.wedTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.thuFrom ??><#else><i>Thu: Closed</i></#if><#if rest.thuTo ??>
						<i>Thu From: </i>${rest.thuFrom?date?string["h:mm a"]}<i> To: </i>${rest.thuTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.friFrom ??><#else><i>Fri: Closed</i></#if><#if rest.friTo ??>
						<i>Fri From: </i>${rest.friFrom?date?string["h:mm a"]}<i> To: </i>${rest.friTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.satFrom ??><#else><i>Sat: Closed</i></#if><#if rest.satTo ??>
						<i>Sat From: </i>${rest.satFrom?date?string["h:mm a"]}<i> To: </i>${rest.satTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
					<#if rest.sunFrom ??><#else><i>Sun: Closed</i></#if><#if rest.sunTo ??>
						<i>Sun From: </i>${rest.sunFrom?date?string["h:mm a"]}<i> To: </i>${rest.sunTo?date?string["h:mm a"]}
					</#if>
					</div>
				</div>
			</div>
			<br />
			<div class="row">
			<#if Session["SPRING_SECURITY_CONTEXT"]?exists>
				<div class="col-md-3">
		     		<#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'customer'>
						<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#reserveTableModal">Reserve Table</button>

						  <div class="modal fade" id="reserveTableModal" role="dialog">
						    <div class="modal-dialog">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          	<h4 class="modal-title">Please fill the below details:</h4>
						        </div>
						        <div class="modal-body">
						          <form role="form" id ="reserveTableForm"  data-toggle="validator"  >
						          <input type='hidden' name='restId' id='restId' value='<#if rest.restID ??>${rest.restID}</#if>' />
						          <input type='hidden' name='restName' id='restName' value='<#if rest.restName ??>${rest.restName}</#if>' />
									   <div class="form-group">
									      <label for="peopleCount">Number Of People:</label>
									      <input type="text" class="form-control" id="peopleCount" name="peopleCount" placeholder="Enter a number between 1 to 50" required  >
									   </div>
									   <div class="form-group">
									      <label for="time">Reservation Time:</label>
									      <div class="input-group bootstrap-timepicker timepicker">
									      	<input type="text" class="form-control restaurantTimes" id="time" name="time" placeholder="HH:MM AM/PM" required >
									      </div>
									   </div>
									   <div class="form-group">
									      <label for="nonsmoke">Non-Smoke:</label> 
									      <select id="nonsmoke" name = "nonsmoke"
											class="form-control" required >
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									   </div>
 								 	</form>
						        </div>
						        <div class="modal-footer">
						       	 	<button type="button" id ="contineBtn" class="btn btn-default" >Continue</button>
						          	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						  </div>
					</#if>
				</div>
			</#if>
			</div>
		</div>
	</div>
	<div class = "container">
	<div class="panel panel-info">
		<div class="panel-heading text-center"><strong><i>MENU</i></strong></div>
		<div class="panel-info">
			<table class="table table-striped table-hover table-responsive" id="restaurantMenuTable">
			<tbody>
			<#list MenuItems as item>
			<tr id='menuItemRow-${item.itemNum}' >
				<input type='hidden'  value='menuItem-${item.restId}-${item.itemNum}'>
				<#if item.itemName??>
					<td id='RestDetailsPage-${item.restId}-${item.itemNum}'>${item.itemName}</td>
					<td>${item.basePrice}</td>
				<#else>
					<td id='RestDetailsPage-${item.restId}-${item.itemNum}'></td>
				</#if>
			</tr>
			</#list>
			</tbody>
			</table>
		</div>
		<#include "Restaurant/AddToCartModalWizard.ftl" >
		</div>	
	</div>
			
	<!--	<ul class="pager">
			<li class="previous"><a
				href="<@spring.url '/getRestaurantListPage'/>">Back</a></li>
		</ul>  -->
		
	</div>	
</body>
</html>



