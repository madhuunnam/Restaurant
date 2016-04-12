<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant Account</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <script>
  $(function() {
     $('#fromDate').datepicker({ dateFormat: 'yy-mm-dd' });
     $('#toDate').datepicker({ dateFormat: 'yy-mm-dd' });
  });
  </script>

<script type="text/javascript" src="javascript/AccountPage.js"></script>

</head>
<body>
	<#include "../NavBar.ftl">
	<br />
	<div class="container">
	<div class="jumbotron" style="background-image: url(images/statistics.jpg); background-size: 30%;">
		<form class="form-inline" role="form" action="/getRestaurantStatistics">
			
			<div class="form-group">
				 <select id="restStats"
					class="form-control">
					<option value="">Select</option>
					<option value="Weekly">Weekly</option>
					<option value="Monthly">Monthly</option>
					<option value="Quaterly">Quaterly</option>
					<option value="Annually">Annually</option> 
				</select>
			</div>
			<div class="form-group">
				<label for="from">History OR From</label>
				<div class='input-group date' >
					<input type='text' class="form-control"  id='fromDate'/> 
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="To"> To</label>
				<div class='input-group date' >
					<input type='text' class="form-control" id='toDate' /> 
				</div>
			</div>
			<button type="submit" class="btn btn-info" >Go</button>
		</form>
	</div>
		<br /> <br />
		<div class="col-md-12">
			<form role="form" id="restaurantStatDetailsForm" >
				<table class="table table-responsive table-bordered" id="restaurantStatDetailsTable">
					<thead>
						<tr>
							<th>Type</th>
							<th>Number of Orders</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
					<#if restStats ??>
						<tr>
							<td>PickUp Orders</td>
							<td><button type="button" class="btn btn-link " onclick="onclickPickUpOrders();"><#if restStats.noOfPickUpOrders ??>${restStats.noOfPickUpOrders}</#if></button></td>
							<td><#if restStats.sumOfPickUpOrders ??>${restStats.sumOfPickUpOrders}</#if></td>
						</tr>
						<tr>
							<td>Delivery Orders</td>
							<td><button type="button" class="btn btn-link " onclick="onclickPickUpOrders();"><#if restStats.noOfDeliveryOrders ??>${restStats.noOfDeliveryOrders}</#if></button></td>
							<td><#if restStats.sumOfDeliveryOrders ??>${restStats.sumOfDeliveryOrders}</#if></td>
						</tr>
						<tr>
							<td>Reservation Orders</td>
							<td><button type="button" class="btn btn-link " onclick="onclickPickUpOrders();"><#if restStats.noOfReservationOrders ??>${restStats.noOfReservationOrders}</#if></button></td>
							<td><#if restStats.sumOfReservationOrders ??>${restStats.sumOfReservationOrders}</#if></td>
						</tr>
						<tr>
							<td>Total Orders</td>
							<td><button type="button" class="btn btn-link " onclick="onclickPickUpOrders();"><#if restStats.totalOrders ??>${restStats.totalOrders}</#if></button></td>
							<td><#if restStats.totalOrdersSum ??>${restStats.totalOrdersSum}</#if></td>
						</tr>
					</#if>
					</tbody>
				</table>
			</form>
		</div>
	</div>

</body>
</html>



