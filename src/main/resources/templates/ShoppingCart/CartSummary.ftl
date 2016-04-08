<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Cart Summary</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/shoppingCart.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<form id='cartSummaryForm'>
			<#if (order.lineItems?size > 0) >
				<div class="panel panel-info">
					<div class="panel-heading"><h4><strong>Cart Summary</strong></h4></div>
					<div class="panel-info">
						<table class="table table-striped table-hover table-responsive" id="summaryCartTable">
							<thead>
								<th>Selected Item</th>
								<th>Quantity</th>
								<th>Price</th>
							</thead>
							<tbody>
								<#list order.lineItems as lineItem>
								<tr>
		
									<#if lineItem.itemName??>
									<td>${lineItem.itemName}</td> <#else>
									<td></td> </#if> <#if lineItem.quantity??>
									<td>${lineItem.quantity}</td> <#else>
									<td></td> </#if> <#if lineItem.price??>
									<td class='lineItemPrice'>${lineItem.price * lineItem.quantity}</td> <#else>
									<td></td> </#if>
								</tr>
								</#list>
							</tbody>
						</table>
					</div> <!--panel-info -->
					<div class="row">
						<div class="col-md-offset-1">
						<button type="button" class="btn btn-info  btn-lg col-md-5" id='orderPickUpButton' onClick="reviewOrderForPickUp();" >Review Your Order For Pick Up</button>
						<button type="button" class="btn btn-info btn-lg col-md-5 col-md-offset-1  btn-md" id='orderDeliveryButton' data-toggle="modal" data-target="#deliveryDetails">Review Your Order For Delivery</button>
							<div id="deliveryDetails" class="modal fade" role="dialog">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal">&times;</button>
							        <h4 class="modal-title">Modal Header</h4>
							      </div>
							      <div class="modal-body">
							        <div class="row">
							        	<label class="control-label col-sm-3" > Delivery Address: </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="deliAddr" name="deliAddr"  placeholder="Enter Delivery Address" required>
										</div>
							        </div>
							        <br />
							        <div class="row">
							        	<label class="control-label col-sm-3" for="receiverName"> Receiver Name: </label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="receiverName" name="receiverName"  placeholder="Enter Receiver Name" >
										</div>
							        </div>
							      </div>
							      <div class="modal-footer">
							      	<button type="button" class="btn btn-default" data-dismiss="modal" onclick="onclickDeliveryAddressSubmission()">Continue</button>
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							
							  </div>
							</div>
						</div>
					</div> <!--row -->
				</div><!--panel panel-info -->
			<#else>
				<div class="panel panel-info ">
					<div class="panel-heading">You Dont Have Any Items In Your Cart. </div>
				</div>
			</#if>
		</form>
	</div><!--container -->
</body>