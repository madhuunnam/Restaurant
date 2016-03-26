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
  
  <script>
  $(function() {
  	 $('#datepicker').datetimepicker();
     $('#fromDate').datepicker({ dateFormat: 'yy-mm-dd' });
     $('#toDate').datepicker({ dateFormat: 'yy-mm-dd' });
  });
  </script>

<script type="text/javascript" src="/javascript/restaurantPage.js"></script>

</head>
<body>
	<#include "NavBar.ftl">

	<div class="container text-left">
		<div class="jumbotron">
			<h2>
				<strong><#if rest.restName ??>${rest.restName}</#if></strong>
			</h2>
			<div class="row">
				<div class="col-md-3">
					<strong>Number of Reviews:<#if rest.restAdmin.numRev??>${rest.restAdmin.numRev}</#if></strong>
				</div>
				<div class="col-md-3">
					<strong>Number of Yelp:<#if rest.restAdmin.numYelp??>${rest.restAdmin.numYelp}</#if></strong>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<strong>Dine In:<#if rest.dineIn ??>${rest.dineIn}</#if></strong>
				</div>
				<div class="col-md-3">
					<strong>Comments:</strong>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<strong>Delivery:<#if rest.delivery ??>${rest.delivery}</#if></strong>
				</div>
				<div class="col-md-3">
					<strong>Pick Up:<#if rest.pickup ??>${rest.pickup}</#if></strong>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<strong>Open Hours:</strong>
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
						          <form role="form" id = "reserveTableForm">
									   <div class="form-group">
									      <label for="peopleCount">Number Of People:</label>
									      <input type="text" class="form-control" id="peopleCount" placeholder="Enter a number between 1 to 50">
									   </div>
									   <div class="form-group">
									      <label for="time">Reservation Time:</label>
									      <input type="text" class="form-control" id="time" placeholder="HH:MM">
									   </div>
									   <div class="form-group">
									      <label for="nonsmoke">Non-Smoke:</label> <select id="nonsmoke"
											class="form-control">
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									   </div>
 								 	</form>
						        </div>
						        <div class="modal-footer">
						       	 <button type="button" class="btn btn-default" onclick="onclickReserveTable();">Continue</button>
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
		<div class="panel panel-info">
			<div class="panel-heading"><strong>Menu</strong></div>
			<div class="panel-info">
				<table class="table table-striped table-hover table-responsive" id="restMenuTable">
					<tbody>
						<#list MenuItems as item>
						<tr>${item.secName}
							<#if item.itemName??>
							<td id='${item.restId}-${item.itemNum}'>${item.itemName}<#else>
							<td id='secName-${item.restId}-${item.itemNum}'></td></#if>
						</tr>
						</#list>
					</tbody>
				</table>
	
				<div id="selectYourChoice" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h3 id="myModalLabel">Modal header</h3>
					</div>
					<div class="modal-body">
						<p>One fine body…</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
						<button class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>

	<ul class="pager">
		<li class="previous"><a href="<@spring.url '/getRestaurantListPage'/>">Back</a></li>
	</ul>
</body>
</html>



