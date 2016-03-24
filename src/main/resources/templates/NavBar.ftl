<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
	<title>TastyHub</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
  	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>
	
	<script>
    	$(document).ready(function () {
        	$('.dropdown-toggle').dropdown();
    	});
	</script>
</head>
<body>
	<#if Session["SPRING_SECURITY_CONTEXT"]?exists>
		<#assign sessionUserId = Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userId>
		<#assign sessionUserName = Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userEmail>
	</#if>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand"><strong>TASTY HUB</strong></a>
    </div>
    <div class="collapse navbar-collapse " id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="<@spring.url '/Homepage'/>"><i class="glyphicon glyphicon-home"></i> Home</a></li>
		
     	 <#if Session["SPRING_SECURITY_CONTEXT"]?exists>
     	 <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'customer'>
     	 <li><a href="<@spring.url '/CustomerProfile'/> "><i class="glyphicon glyphicon-user"></i>Customer Profile</a></li>
     	 <li><a href="<@spring.url '/'/> ">Orders</a></li>
     	 <li><a href="<@spring.url '/Review'/> ">Reviews</a></li>
     	 <li><a href="<@spring.url '/'/> ">Credits</a></li>
     	 <li><a href="<@spring.url '/CustomerAccount'/> ">Account</a></li>
     	 <li class="dropdown">
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Other
        		<span class="caret"></span></a>
        	<ul class="dropdown-menu">
          		<li><a href="#">Page 1-2</a></li>
          		<li><a href="#">Page 1-3</a></li> 
        	</ul>
     	 </li>
     	 
     	 </#if>
		 <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'restaurant'>
		 <li><a href="<@spring.url '/RestaurantProfile'/> "><i class="glyphicon glyphicon-user"></i>Restaurant Profile</a></li>
		 <li><a href="<@spring.url '/MenuPage'/> ">Menu</a></li>
		 <li><a href="<@spring.url '/'/> ">Orders</a></li>
		 <li><a href="<@spring.url '/'/> ">Statistics</a></li>
		 <li><a href="<@spring.url '/RestaurantAccount'/> ">Account</a></li>
		 <li><a href="<@spring.url '/'/> ">Operations</a></li>
     	 <li class="dropdown">
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Other
        		<span class="caret"></span></a>
        	<ul class="dropdown-menu">
          		<li><a href="#">Page 1-1</a></li>
          		<li><a href="#">Page 1-3</a></li> 
        	</ul>
     	 </li>
     	 </#if>
		 <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'associate'>
		 <li><a href="<@spring.url '/AssociateProfile'/> "><i class="glyphicon glyphicon-user"></i>Associate Profile</a></li>
     	 <li><a href="<@spring.url '/'/> ">Statistics</a></li>
     	 <li><a href="<@spring.url '/AssociateAccount'/> ">Account</a></li>
     	 <li class="dropdown">
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Other
        		<span class="caret"></span></a>
        	<ul class="dropdown-menu">
          		<li><a href="#">Page 1-2</a></li>
          		<li><a href="#">Page 1-3</a></li> 
        	</ul>
     	 </li>
     	 </#if>
		 <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'admin'>
		 <li><a href="<@spring.url '/AdminProfile'/> "><i class="glyphicon glyphicon-user"></i>Admin Profile</a></li>
     	 <li><a href="<@spring.url '/'/> ">LookUp</a></li>
     	 <li><a href="<@spring.url '/'/> ">Statistics</a></li>
     	 <li><a href="<@spring.url '/AdminAccount'/> ">Account</a></li>
     	 <li class="dropdown">
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Other
        		<span class="caret"></span></a>
        	<ul class="dropdown-menu">
          		<li><a href="#">Page 1-2</a></li>
          		<li><a href="#">Page 1-3</a></li> 
        	</ul>
     	 </li>
     	 </#if>
		<#else>
 		<li><a href="<@spring.url '/forSale'/> ">For Sale</a></li>
        <li><a href="<@spring.url '/hiring'/> ">Hiring</a></li>
		<li><a href="<@spring.url '/About'/> ">About</a></li>
		<li><a href="<@spring.url '/Contact'/> ">Contact</a></li>
		</#if>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
      	<#if Session["SPRING_SECURITY_CONTEXT"]?exists>
     	  <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'customer'>
    	 <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart </a></li>
    	  </#if>
 		</#if>
        <#if Session["SPRING_SECURITY_CONTEXT"]?exists>
        	<li> <a href="<@spring.url '/logout'/>"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		<#else>
			<li><a href="<@spring.url '/SignupPage'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="<@spring.url '/LoginPage'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</#if>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>