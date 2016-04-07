<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Customer Active Orders</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/customerPage.js"></script>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 100%
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>
	<#include "../NavBar.ftl">

	<div class="container-fluid text-center">
		<div class="row content" >
			<div class="col-sm-2 sidenav">
				<h4>Your Orders</h4>
				<table class="responsive">
					<#list custActiveOrders as activeOrder>
					<tbody>
						<td>
							<button type="button" class="btn btn-link btn-lg" id="selectedOrderId" onclick="onclickCustOrderDetails(${sessionUserId},<#if activeOrder.orderNo ??>${activeOrder.orderNo}</#if>);">OrderId <#if
								activeOrder.orderNo ??>${activeOrder.orderNo}</#if></button>
						</td>
					</tbody>
					</#list>
				</table>
			</div>
			<div class="col-sm-9 text-left">
				<h2>Order Details:</h2>
				<hr>
				<div class="container-fluid">
					<div id="custOrderDetailsDiv">
						<div class="row">
							<label class="col-md-2">Customer Name: </label> <label class="col-md-4" id="custName"></label> 
							<label class="col-md-2">Order ID: </label> <label class="col-md-4" id="orderId"></label>
						</div>
						<div class="row">
							<label class="col-md-2">Restaurant Name: </label> <label class="col-md-4" id="restName"></label>
							<label class="col-md-2">Order Date: </label> <label class="col-md-4" id="orderDate"></label> 
						</div>
						<div class="row">
							<label class="col-md-2">Receiver Name: </label> <label class="col-md-4" id="receiverName"></label> 
							<label class="col-md-2">Deliverd Address: </label> <label class="col-md-4" id="deliAdd"></label>
						</div>
						<div class="row">
							<label class="col-md-2">PickUp Time: </label> <label class="col-md-4" id="pickUpTime"></label> 
							<label class="col-md-2">Reservation Time: </label> <label class="col-md-4" id="reservTime"></label>
						</div>
						<div class="row">
							<label class="col-md-2">Number of People: </label> <label class="col-md-4" id="noOfPeople"></label> 
							<label class="col-md-2">NonSmoke: </label> <label class="col-md-4" id="nonSmoke"></label>
						</div>
						<div class="row">
							<label class="col-md-2">Your Order: </label> <label class="col-md-4" id="yourOrder"></label> 
							<label class="col-md-2">Order Status: </label> <label class="col-md-4" id="orderStatus"></label>
						</div>
						<div class="row">
							<label class="col-md-2">Order Instructions: </label> <label class="col-md-4" id="orderInstruc"></label>
						</div>
						<br />
						<div class="row">
							<label class="col-md-2">Message from Restaurant: </label> <label class="col-md-4" id="msgFromRest"></label>
						</div>
						<br />
						<div class="row">
							<label class="col-md-3">Message to Restaurant: </label>
							<textarea class="col-md-6" cols="40" id="msgToRest" name="textarea" rows="2"></textarea>
							<button type="button" class="btn btn-info btn-sm col-sm-1 ">Send</button>
						</div>
						<!-- <br /> <br />
						<div class="row">
							<button type="button" class="btn btn-info btn-md col-md-4 col-md-offset-3" data-toggle="tooltip" 
							data-placement="bottom" title="You can earn credits for next meal by writing a Review!">Write
								a Review about this Restaurant</button>
						</div>  -->
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>














