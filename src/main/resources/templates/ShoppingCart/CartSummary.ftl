<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
<#include "../NavBar.ftl">
<div class="panel panel-info">
	<div class="panel-heading">Cart Summary</div>
		<div class="panel-info">
			<table class="table table-striped table-hover table-responsive" id="summaryCartTable">
			<thead>
				<th>Line Item Quantity</th>
				<th>Price</th>
			</thead>
			<tbody>
			<#list order.lineItems as lineItem>
			<tr>
				<#if lineItem.quantity??>
					<td>${lineItem.quantity}</td>
				<#else>
					<td></td>
				</#if>
				<#if lineItem.price??>
					<td>${lineItem.price}</td>
				<#else>
					<td></td>
				</#if>

			</tr>
			</#list>
			</tbody>
			</table>
		</div>
	</div>	
</div>
</body>