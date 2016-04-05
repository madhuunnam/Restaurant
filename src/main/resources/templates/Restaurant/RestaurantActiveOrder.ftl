<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant Active Orders</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/OrdersPage.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">

	<div class="container text-center">
		<h3>Manage Active Orders</h3>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<form role="form" id="restOrderForm"  >
					<table class="table table-striped table-hover table-responsive" id="restOrdersTable" >
						<thead>
							<tr>
								<th>Order No</th>
								<th>Order Date</th>
								<th>Customer Name</th>
								<th>#Lines</th>
								<th>Price</th>
								<th>Type</th>
								<th>Reservation</th>
								<th>PickTime</th>
								<th>Arrive Time</th>
								<th>MsgFromCustomer</th>
								<th>MsgToCustomer</th>
								<th>Status</th>
								<th>Update</th>
							</tr>
						</thead>
						<tbody>
							<#list restActiveOrders as restOrder>
							<tr id='restOrderRow-${restOrder.orderNo}'>
								<td><#if restOrder.orderNo ??>${restOrder.orderNo}</#if></td>
								<td><#if restOrder.orderTime ??>${restOrder.orderTime}</#if></td>
								<td><#if restOrder.custName ??>${restOrder.custName}</#if></td>
								<td><#if restOrder.numberOfLines ??>${restOrder.numberOfLines}</#if></td>
								<td><#if restOrder.totPrice ??>${restOrder.totPrice}</#if></td>
								<td><#if restOrder.orderType ??>${restOrder.orderType}</#if></td>
								<td><#if restOrder.resTime ??>${restOrder.resTime}</#if></td>
								<td><#if restOrder.pickTime ??>${restOrder.pickTime}</#if></td>
								<td><#if restOrder.arriveTime ??>${restOrder.arriveTime}</#if></td>
								<td><#if restOrder.msgToRes ??>${restOrder.msgToRes}</#if></td>
								<td><input type="text" class="form-control" name="msgToCust" value="<#if restOrder.msgToCust ??>${restOrder.msgToCust}</#if>" /></td>
								<td>
									<select id="status" name="status" value="<#if restOrder.status ??>${restOrder.status}</#if>" class="form-control">
										<option value="New">New</option>
										<option value="Complete">Complete</option>
									</select>
								</td>	
								<td> <button id='updateButton-${restOrder.orderNo}' type="button" name="updateOrder" class="btn btn-info btn-sm" onClick="onclickOrderUpdate(${restOrder.orderNo});">Process Order</button></td>
							</tr>
							</#list>
							<input type='hidden' name='orderNoToUpdate' id='orderNoToUpdate' value=''/>
							<input type='hidden' name='orderStatusToUpdate' id='orderStatusToUpdate' value=''/>
							<input type='hidden' name='msgToCustToUpdate' id='msgToCustToUpdate' value=''/>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>














