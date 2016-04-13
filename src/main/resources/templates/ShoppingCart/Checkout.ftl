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
<script type="text/javascript">
	$(document).ready(function() {
	<#if customer.cardType ??>
	if ( '${customer.cardType}' != null ){
		$('#cardType').val('${customer.cardType}');
		}
	});
	</#if>
</script>
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<div class="row">
			<h2 align="center">Confirm Order</h2>
			<hr>
		</div>
	</div>
	<div class="container">
		<form role="form" action ='/confirmOrder'>
			<h4>Basic Information: </h4>
			<div class="row">
				<label class="col-md-2">FirstName: </label> <label class="col-md-4" id="firstName"><#if customer.firstName ??>${customer.firstName}</#if></label> 
				<label class="col-md-2">MiddleName: </label> <label class="col-md-4" id="middleName"><#if customer.middleName ??>${customer.middleName}</#if></label>
			</div>
			<div class="row">
				<label class="col-md-2">LastName: </label> <label class="col-md-4" id="lastName"><#if customer.lastName ??>${customer.lastName}</#if></label> 
				<label class="col-md-2">NickName: </label> <label class="col-md-4" id="nickName"><#if customer.nickName ??>${customer.nickName}</#if></label>
			</div>
			<div class="row ">
				<label class="col-md-2">Phone: </label> <label class="col-md-4" id="phone"><#if customer.phone ??>${customer.phone}</#if></label>
			</div>
			<hr>
			<h4>Payment Information: </h4>
			<br />
			<div class="row">
				<div class="col-md-12 ">
					<div class="form-group" align="center">
					<label class="control-label col-md-2 " for="cardType">Card Type: </label>
						<div class="col-md-2">
							<select id="cardType" name="cardType" value="<#if customer.cardType??>${customer.cardType}</#if>" class="form-control">
								<option value="" />
								<option value="Debit">Debit</option>
								<option value="Credit">Credit</option>
							</select>
						</div>
					
						 <label class="control-label col-md-2 " for="cardName">Name on Card: </label>
							 <div class="col-md-3 "> 
							     <input type="text" class="form-control" id="cardName" name="cardName" value = "<#if customer.cardName??>${customer.cardName}</#if>" placeholder="Card Number" >
							 </div>
					 </div>
					 <br /><br />
					 <div class="form-group" align="center"> 
						 <label class="control-label col-md-2 " for="cardNumber">Card Number: </label>
							 <div class="col-md-2 "> 
							     <input type="text" class="form-control" id="cardNumber" name="cardNumber" value = "<#if customer.cardNumber??>${customer.cardNumber}</#if>" placeholder="Card Number" >
							 </div>
					 
						 <label class="control-label col-md-2 " for="cardExp">Card Exp: </label>
							 <div class="col-md-3"> 
							     <input type="text" class="form-control" id="cardExp" name="cardExp" value = "<#if customer.cardExp??>${customer.cardExp?date?string["MM/yyyy"]}</#if>" placeholder="MM/YYYY" >
							 </div>
					 </div>
					 <br /><br />
					 <div class="form-group" align="center"> 
						 <label class="control-label col-md-2" for="cardCode">CVV:</label>
							 <div class="col-md-2"> 
							     <input type="text" class="form-control" id="cardCode" name="cardCode" value = "<#if customer.cardCode??>${customer.cardCode}</#if>" placeholder="cvv" >
							 </div>
					 
						 <label class="control-label col-md-2" for="billZip">Billing Zip: </label>
							 <div class="col-md-3"> 
							     <input type="text" class="form-control" id="billZip" name="billZip" value = "<#if customer.billZip??>${customer.billZip}</#if>" placeholder="Zip" >
							 </div>
					 </div>
					 <br /><br />
					  <div class="form-group" align="center"> 
						 <label class="control-label col-md-2 " for="billAddr">Billing Zip: </label>
							 <div class="col-md-6"> 
							     <input type="text" class="form-control" id="billAddr" name="billAddr" value = "<#if customer.billAddr??>${customer.billAddr}</#if>" placeholder="Street Address, City, State" >
							 </div>
					 </div>
			 	</div>
			 </div>
			<br /><br />
			<div class="form-group"> 
				<button type="submit" class="btn btn-info btn-lg col-md-3 col-md-offset-4" id='confirmOrderButton' >Pay and Confirm Order</button>
			</div>
		</form>
	</div>
</body>