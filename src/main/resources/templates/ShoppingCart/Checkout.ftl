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
		   <div class="col-md-6 col-sm-6 col-xs-12">
		    <form method="post">
		     <div class="form-group ">
		      <label class="control-label requiredField" for="firstName">
		       FirstName
		       <span class="asteriskField">*</span>
		      </label>
		      <input class="form-control" id="firstName" name="firstName" placeholder="Your FirstName" type="text" value='<#if customer.firstName ??>${customer.firstName}</#if>'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="middleName">
		       MiddleName
		      </label>
		      <input class="form-control" id="middleName" name="middleName" placeholder="Your MiddleName" type="text" value='<#if customer.middleName ??>${customer.middleName}</#if>'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label requiredField" for="lastName">
		       LastName
		       <span class="asteriskField">*</span>
		      </label>
		      <input class="form-control" id="lastName" name="lastName" placeholder="Your LastName" type="text" value='<#if customer.lastName ??>${customer.lastName}</#if>' />
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="displayName">
		       NickName
		      </label>
		      <input class="form-control" id="displayName" name="displayName" placeholder="Your DisplayName" type="text" value='<#if customer.nickName ??>${customer.nickName}</#if>'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="phone">
		       Phone 
		      </label>
		      <input class="form-control" id="phone" name="phone" placeholder="Your phone" type="text" value='<#if customer.phone ??>${customer.phone}</#if>'/>
		     </div>
		     <div class="btn-group">
				  <button type="button" class="btn btn-info">CreditCard</button>
				  <button type="button" class="btn btn-info">Cash</button>
				  <button type="button" class="btn btn-info">StoreCredit</button>
			 </div>
			  <div class="form-group ">
		      <label class="control-label " for="cardNumber1">
		       Card Number
		      </label>
		      <input class="form-control" id="cardNumber1" name="cardNumber1" placeholder="Card Number" type="text" value='<#if customer.cardNumber1 ??>${customer.cardNumber1}</#if>'/>
		     </div>
			 <div class="form-group ">
		      <label class="control-label " for="cardExp1">
		       Card Exp
		      </label>
		      <input class="form-control" id="cardExp1" name="cardExp1" placeholder="MM/YYYY" type="text" value='<#if customer.cardExp1 ??>${customer.cardExp1}</#if>'/>
		     </div>
		      <div class="form-group ">
		      <label class="control-label " for="cardCode1">
		       CVV
		      </label>
		      <input class="form-control" id="cardCode1" name="cardCode1" placeholder="cvv" type="text" value='<#if customer.cardCode1 ??>${customer.cardCode1}</#if>'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="billZip1">
		       Billing Zip
		      </label>
		      <input class="form-control" id="billZip1" name="billZip1" placeholder="Zip" type="text" value='<#if customer.billZip1 ??>${customer.billZip1}</#if>'/>
		     </div>
		    </form>
		   </div>
		  </div>
	</div><!--container -->
</body>