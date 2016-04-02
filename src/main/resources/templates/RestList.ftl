<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/searchPage.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<style>
p.oblique {
	color: Black;
	font-family: 'Droid serif', serif;
	font-size: 38px;
	font-weight: 400;
	line-height: 44px;
	margin: 0 0 12px;
	text-align: center;
}

</style>
</head>
<body>
	<#include "NavBar.ftl">
	<div class="container-fluid text-center">
		<div class="jumbotron" style="background-image: url(images/restBckgrnd.jpg); background-size: 100%;">
  <div class="container text-center">
    <h3>Pick a Restaurant of your choice!</h3>      
  </div>
</div>
<div class="row">
			<div class="col-md-6 text-info">
				<div class="checkbox">
					<label><input type="checkbox" value="HasMenuOnly">HasMenuOnly</label>
					<label><input type="checkbox" value="OpenNow">OpenNow</label>
					<label><input type="checkbox" value="Delivery">Delivery</label>
				</div>
			</div>
			<div class="col-md-6 text-info">
				<lable>Sort By:</label> <select id="sortOrder">
					<option value="Distance">Distance</option>
					<option value="Price">Price</option>
					<option value="Rating">Rating</option>
				</select> <lable>Limit To:</label> <select id="limitTo">
					<option value="1M">1 Miles</option>
					<option value="2M">2 Miles</option>
					<option value="3M">3 Miles</option>
					<option value="4M">4 Miles</option>
					<option value="5M">5 Miles</option>
					<option value="10M">10 Miles</option>
					<option value="20M">20 Miles</option>
					<option value="30M">30 Miles</option>
					<option value="40M">40 Miles</option>
					<option value="50M">50 Miles</option>
				</select>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col-md-12">
			<form role="form" id="restTableForm">
			<input type = 'hidden' name = 'selectedRest' id='selectedRest' />
				<table class="table table-striped table-hover table-responsive" id="restListTable">
					<thead>
						<tr>
							<th>Logo</th>
							<th>Restaurant Name</th>
							<th>Delivery Min</th>
							<th>Delivery Fee</th>
							<th>Reviews</th>
							<th>Yelp Reviews</th>
							<th>Distance( Miles )</th>
							<th>Price</th>
							<th>Popularity</th>
						</tr>
					</thead>
					<tbody>
					  <#list restList as rest>
						<tr id = "${rest.restID}">
							<td><#if rest.restID ??>${rest.restID}</#if></td>
							<td><#if rest.restName ??>${rest.restName}</#if></td>
							<td><#if rest.deliMin ??>${rest.deliMin}</#if></td>
							<td><#if rest.deliFee ??>${rest.deliFee}</#if></td>
							<td><#if rest.restAdmin.numRev ??>${rest.restAdmin.numRev}</#if></td>
							<td><#if rest.restAdmin.numYelp ??>${rest.restAdmin.numYelp}</#if></td>
							<td><#if rest.distanceFromSearchLocation ??>${rest.distanceFromSearchLocation}</#if></td>
							<td><#if rest.restAdmin.priceRange ??>${rest.restAdmin.priceRange}</#if></td>
							<td><#if rest.restAdmin.popularity ??>${rest.restAdmin.popularity}</#if></td>
						</tr>
					  </#list>
					</tbody>
				</table>
				
			</form>
		</div>
	</div>
</div>

</body>
</html>



