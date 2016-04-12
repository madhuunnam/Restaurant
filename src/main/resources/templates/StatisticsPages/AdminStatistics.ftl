<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Admin Account</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script>
	$(function() {
		$('#fromDate').datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$('#toDate').datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>

<script type="text/javascript" src="javascript/AccountPage.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<div class="jumbotron" style="background-image: url(images/statistics.jpg); background-size: 50%;">

			<div class="row">
				<div class="col-md-4">
					<strong>Number of Customers:<#if stats.noOfCustomers ??>${stats.noOfCustomers}</#if></strong>
				</div>
				<div class="col-md-4">
					<strong>Number of Restaurants:<#if stats.noOfRestaurants ??>${stats.noOfRestaurants}</#if></strong>
				</div>
				<div class="col-md-4">
					<strong>Number of Menus:<#if stats.noOfMenus ??>${stats.noOfMenus}</#if></strong>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<strong>Number of Transactions:<#if stats.noOfTransactions ??>${stats.noOfTransactions}</#if></strong>
				</div>
				<div class="col-md-4">
					<strong>Number of Active Orders:<#if stats.noOfActiveOrders ??>${stats.noOfActiveOrders}</#if></strong>
				</div>
				<div class="col-md-4">
					<strong>Total Associate Members:<#if stats.noOfTotAssocMembers ??>${stats.noOfTotAssocMembers}</#if></strong>
				</div>
			</div>
			<!-- <div class="row">
			<div class="col-md-4" ><strong>Number of A:<#if stats.noOfAssociates ??>${stats.noOfAssociates}</#if></strong></div>
		    <div class="col-md-4" ><strong>Number of SA:<#if stats.noOfSa ??>${stats.noOfSa}</#if></strong></div>
		    <div class="col-md-4" ><strong>Number of MD:<#if stats.noOfMd ??>${stats.noOfMd}</#if></strong></div>
	  </div>
		<div class="row">
			<div class="col-md-4" ><strong>Number of SMD:<#if stats.noOfSmd ??>${stats.noOfSmd}</#if></strong></div>
		    <div class="col-md-4" ><strong>Number of CEO:<#if stats.noOfCeo ??>${stats.noOfCeo}</#if></strong></div>
		    <div class="col-md-4" ><strong>Number of TA:<#if stats.noOfTa ??>${stats.noOfTa}</#if></strong></div>
		   
	  </div> -->
		</div>
		<div class="row col-sm-offset-3 col-sm-5 col-sm-offset-4">
			<table class="table table-responsive table-bordered" id="adminDetailsTable">
				<thead>
					<tr>
						<th>Type</th>
						<th>Number of Orders</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><strong>PickUp Orders</strong></td>
						<td><#if stats.noOfPickUpOrders ??>${stats.noOfPickUpOrders}</#if></td>
						<td><#if stats.totalPickUpAmt ??>${stats.totalPickUpAmt}</#if></td>
					</tr>
					<tr>
						<td><strong>Delivery Orders</strong></td>
						<td><#if stats.noOfDeliveryOrders ??>${stats.noOfDeliveryOrders}</#if></td>
						<td><#if stats.totalDeliAmt ??>${stats.totalDeliAmt}</#if></td>
					</tr>
					<tr>
						<td><strong>Reservation Orders</strong></td>
						<td><#if stats.noOfReserveOrders ??>${stats.noOfReserveOrders}</#if></td>
						<td><#if stats.totalReserveAmt ??>${stats.totalReserveAmt}</#if></td>
					</tr>
					<tr>
						<td><strong>Total Orders</strong></td>
						<td><#if stats.noOfTotalOrders ??>${stats.noOfTotalOrders}</#if></td>
						<td><#if stats.totalOrderAmt ??>${stats.totalOrderAmt}</#if></td>
					</tr>
				</tbody>
			</table>
		</div>
	<!--	<div class="col-md-12">
			<form class="form-inline" role="form">

				<div class="form-group">
					<label for="from">Date From</label>
					<div class='input-group date'>
						<input type='text' class="form-control" id='fromDate' /> </span>
					</div>
				</div>
				<div class="form-group">
					<label for="To"> To</label>
					<div class='input-group date'>
						<input type='text' class="form-control" id='toDate' />
					</div>
				</div>
				<div class="form-group">
					<label for="Recent"> Or Most Recent</label> <select id="adminStats" class="form-control">
						<option value="">Select</option>
						<option value="Week">Week</option>
						<option value="Month">Month</option>
						<option value="Year">Year</option>
					</select>
				</div>
				<button type="button" class="btn btn-info" onclick="onclickAdminStatisticsPageSubmit();">Go</button>
			</form>
		</div>
		<br /> <br />	
		<div class="col-md-12">
			<table class="table table-responsive" id="adminStatisticsDetailsTable">
				<thead>
					<tr>
						<th>Line#</th>
						<th>LineId</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>
		</div> -->
	</div>
</body>
</html>



