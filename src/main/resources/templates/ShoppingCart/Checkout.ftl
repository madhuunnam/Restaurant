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
		      <input class="form-control" id="firstName" name="firstName" placeholder="Your FirstName" type="text" value='${customer.firstName}'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="middleName">
		       MiddleName
		      </label>
		      <input class="form-control" id="middleName" name="middleName" placeholder="Your MiddleName" type="text" value='${customer.middleName}'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label requiredField" for="lastName">
		       LastName
		       <span class="asteriskField">*</span>
		      </label>
		      <input class="form-control" id="lastName" name="lastName" placeholder="Your LastName" type="text" value='${customer.lastName}' />
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="displayName">
		       NickName
		      </label>
		      <input class="form-control" id="displayName" name="displayName" placeholder="Your DisplayName" type="text" value='${customer.nickName}'/>
		     </div>
		     <div class="form-group ">
		      <label class="control-label " for="phone">
		       Telephone #
		      </label>
		      <input class="form-control" id="phone" name="phone" placeholder="Your phone" type="text" value='${customer.phone}'/>
		     </div>
		     <div class="form-group">
		      <div>
		       <button class="btn btn-primary " name="submit" type="submit">
		        Submit
		       </button>
		      </div>
		     </div>
		    </form>
		   </div>
		  </div>
	</div><!--container -->
</body>