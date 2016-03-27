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
		<form id='cartSummaryForm' action='/pickUpOrder'>
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
						<div class="col-md-offset-4">
						<button type="submit" class="btn btn-info  btn-lg col-md-2" id='orderPickUpButton' >Pick Up</button>
						<button type="button" class="btn btn-info btn-lg col-md-2 col-md-offset-1  btn-md">Delivery</button>
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