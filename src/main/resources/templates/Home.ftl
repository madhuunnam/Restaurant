
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script type="text/javascript" src="js/clickFunctions.js"></script>
</head>
<body>
	<nav class="navbar navbar-default" style="background-color: #ffb280;">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><strong>TASTY HUB</strong></a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Chinese</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<h3 align='center'>Hungry? Order Here!</h3>
		<div class="row">
			<div class="col-md-2" style="background-color: #e5f2ff;">
				<img src="/src/main/resources/static/hamburger.jpg"
					class="img-rounded" alt="Hamburger" width="194" height="236">
			</div>
			<div class="col-md-10" style="background-color: #ffe6cc;">
				<div class="row">
					<div class="col-md-12">
						<h4>
							<i> Search by your location:</i>
						</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7">
						<input type="text" class="form-control" name=search
							id="searchtext"
							placeholder="Enter your Street Address, City, State" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<button type="button" class="btn btn-link">My Address</button>
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-link">Add to My
							Address</button>
					</div>
					<div class="col-md-4">
						<button type="button" class="btn btn-link">My Favorites</button>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4">
						<div class="dropdown">
							<button type="button" data-toggle="dropdown">
								Select State <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">NC</a></li>
								<li><a href="#">FL</a></li>
								<li><a href="#">SC</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="dropdown">
							<button type="button" data-toggle="dropdown">
								Select City <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Greensboro</a></li>
								<li><a href="#">Charlotte</a></li>
								<li><a href="#">Raleigh</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="dropdown">
							<button type="button" data-toggle="dropdown">
								Select Cuisine <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">American</a></li>
								<li><a href="#">Chinese</a></li>
								<li><a href="#">Mexican</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<button type="submit" class="btn btn-default">Search</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

</body>
</html>