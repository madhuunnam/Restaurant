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
	color: white;
	font-family: 'Droid serif', serif;
	font-size: 28px;
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
		<div class="row" style="background-color: #4dc4ff">
			<div class="col-md-4">
				<img class="img-rounded" src="images/blueFork.jpg" alt="Image"
					width="150" height="80"> 
				<img class="img-rounded"
					src="images/blueFork.jpg" alt="Image" width="200" height="80">
			</div>
			<div class="col-md-3">
				<p class="oblique">Select a Restaurant and start your Order!</p>
			</div>
			<div class="col-md-4">
				<img class="img-rounded" src="images/blueFork.jpg" alt="Image"
					width="150" height="80"> 
				<img class="img-rounded"
					src="images/blueFork.jpg" alt="Image" width="200" height="80">
			</div>
		</div>
		<br />
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
				<table class="table table-striped table-hover" id="restListTable">
					<thead>
						<tr>
							<th>Logo</th>
							<th>Restaurant Name</th>
							<th>Reviews</th>
							<th>Yelp Reviews</th>
							<th>Distance</th>
							<th>Delivery Min</th>
							<th>Delivery Fee</th>
							<th>Price</th>
							<th>Popularity</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Image</td>
							<td>Phoenix</td>
							<td>100</td>
						</tr>
						<tr>
							<td>Img</td>
							<td>Agni</td>
							<td>12</td>
						</tr>
						<tr>
							<td>Image</td>
							<td>Monterry</td>
							<td>34</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>



