<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/javascript/restaurantPage.js"></script>
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
	<div class="panel panel-info">
		<div class="panel-heading">Menu</div>
		<div class="panel-info">
			<table class="table table-striped table-hover table-responsive" id="restMenuTable">
			<tbody>
			<#list MenuItems as item>
			<tr>
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
		<li class="previous"><a
			href="<@spring.url '/getRestaurantListPage'/>">Back</a></li>
	</ul>
</body>
</html>



