<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/searchPage.js"></script>

</head>
<body>
	<#include "NavBar.ftl">
	<div class="jumbotron">
		<div class="container text-left">
			<h2>
				<strong><#if rest.restName ??>${rest.restName}</#if></strong>
			</h2>
			<div class="table-responsive">
				<table class="table table-responsive">
					<tr>
						<td>Timings</td>
						<td>Reviews:<#if rest.restAdmin.numRev
							??>${rest.restAdmin.numRev}</#if></td>
						<td>Yelp Reviews:<#if rest.restAdmin.numYelp
							??>${rest.restAdmin.numYelp}</#if></td>
						<td>Comments</td>
						<td>DineIn:<#if rest.dineIn ??>${rest.dineIn}</#if></td>
						<td>Delivery:<#if rest.delivery ??>${rest.delivery}</#if></td>
						<td>PickUp:<#if rest.pickup ??>${rest.pickup}</#if></td>
						<td>Open Hours:</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">Menu</div>
		<div class="panel-body">
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>
			<p>Sample Menu TODO</p>

		</div>
	</div>
	<ul class="pager">
		<li class="previous"><a
			href="<@spring.url '/getRestaurantListPage'/>">Back</a></li>
	</ul>
</body>
</html>



