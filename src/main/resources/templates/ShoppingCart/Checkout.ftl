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
		<div class="row">
			<h2 align="center">Confirm Order</h2>
			<hr>
		</div>
	</div>
	<div class="container">
		<form role="form" method="post">
			<h4>Basic Information: </h4>
			<div class="row">
				<label class="col-md-2">FirstName: </label> <label class="col-md-4" id="firstName"><#if customer.firstName ??>${customer.firstName}</#if></label> 
				<label class="col-md-2">MiddleName: </label> <label class="col-md-4" id="middleName"><#if customer.middleName ??>${customer.middleName}</#if></label>
			</div>
			<div class="row">
				<label class="col-md-2">LastName: </label> <label class="col-md-4" id="lastName"><#if customer.lastName ??>${customer.lastName}</#if></label> 
				<label class="col-md-2">NickName: </label> <labelclass="col-md-4" id="nickName"><#if customer.nickName ??>${customer.nickName}</#if></label>
			</div>
			<div class="row ">
				<label class="col-md-2">Phone: </label> <label class="col-md-4" id="phone"><#if customer.phone ??>${customer.phone}</#if></label>
			</div>
			<hr>
			<h4>Payment Information: </h4>
			<br />
			<div class="row">
				<div class="col-md-6 ">
					 <div class="form-group" align="center"> 
						 <label class="control-label col-md-3 col-md-offset-3" for="cardNumber1">Card Number: </label>
							 <div class="col-md-6 "> 
							     <input type="text" class="form-control" id="cardNumber1" name="cardNumber1" value = "<#if customer.cardNumber1??>${customer.cardNumber1}</#if>" placeholder="Card Number" >
							 </div>
					 </div>
					 <div class="form-group" align="center"> 
						 <label class="control-label col-md-3 col-md-offset-3" for="cardExp1">Card Exp: </label>
							 <div class="col-md-6"> 
							     <input type="text" class="form-control" id="cardExp1" name="cardExp1" value = "<#if customer.cardExp1??>${customer.cardExp1}</#if>" placeholder="MM/YYYY" >
							 </div>
					 </div>
					 <div class="form-group" align="center"> 
						 <label class="control-label col-md-3 col-md-offset-3" for="cardCode1">CVV:</label>
							 <div class="col-md-6"> 
							     <input type="text" class="form-control" id="cardCode1" name="cardCode1" value = "<#if customer.cardCode1??>${customer.cardCode1}</#if>" placeholder="cvv" >
							 </div>
					 </div>
					  <div class="form-group" align="center"> 
						 <label class="control-label col-md-3 col-md-offset-3" for="cardCode1">Billing Zip: </label>
							 <div class="col-md-6"> 
							     <input type="text" class="form-control" id="billZip1" name="billZip1" value = "<#if customer.billZip1??>${customer.billZip1}</#if>" placeholder="Zip" >
							 </div>
					 </div>
			 	</div>
			 </div>
			<br /><br />
			<div class="form-group"> 
				<button type="button" class="btn btn-info btn-lg col-md-3 col-md-offset-4" id='confirmOrderButton' >Pay and Confirm Order</button>
			</div>
		</form>
	</div>
</body>