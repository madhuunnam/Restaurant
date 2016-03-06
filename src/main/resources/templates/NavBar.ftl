<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>TastyHub</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
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
        <li><a href="<@spring.url '/Homepage'/>">Home</a></li>
        <li><a href="<@spring.url '/forSale'/> ">For Sale</a></li>
         <li><a href="<@spring.url '/hiring'/> ">Hiring</a></li>
		<li><a href="<@spring.url '/About'/> ">About</a></li>
		<li><a href="<@spring.url '/Contact'/> ">Contact</a></li>
		<li><a href="<@spring.url '/AdminProfile'/> ">AdminProfile</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<@spring.url '/SignupPage'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<@spring.url '/LoginPage'/> "><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>