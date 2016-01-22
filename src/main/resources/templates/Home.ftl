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
	<#include "NavBar.ftl">
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="background-color: #f2f2f2;">
				<img src="images/hamburger.jpg"
					class="img-rounded" alt="Hamburger" width="360" height="236">
			</div>
			<div class="col-md-4" style="background-color: #f2f2f2;">
				<img src="images/chinese.jpg"
					class="img-rounded" alt="Chinese" width="360" height="236">
			</div>
			<div class="col-md-4" style="background-color: #f2f2f2;">
				<img src="images/quesadilla.jpg"
					class="img-rounded" alt="Mexican" width="360" height="236">
			</div>
		</div>
		<h3 align='center'><i>Hungry? Enter your location and select a Restaurant to order!</i></h3>
		<div class="row">

			<div class="col-md-10" style="background-color: #f2f2f2;">
				<div class="row">
					<div class="col-md-12">
						<h4>
							 Search by your location:
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
						<label>State: </label> <select id=state>
							<option value="">Select State</option>
							<option value="NC">NC</option>
							<option value="SC">SC</option>
							<option value="FL">FL</option>
						</select>
					</div>
					<div class="col-md-4">
						<label>City: </label> <select id=city>
							<option value="">Select City</option>
							<option value="Greensboro">Greensboro</option>
							<option value="Charlotte">Charlotte</option>
							<option value="Raleigh">Raleigh</option>
						</select>
					</div>
					<div class="col-md-4">
						<label>Cuisine: </label> <select id=cuisine >
							<option value="">Select Cuisine</option>
							<option value="American">American</option>
							<option value="Chinese">Chinese</option>
							<option value="Mexican">Mexican</option>
						</select>
					</div>
					<div class="row">
					<div class="col-md-4"><br /><br /></div>
					</div>
					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-2">
							<button type="button" class="btn btn-info btn-block btn-xs" onclick = "onSearch();">
     					 		<span class="glyphicon glyphicon-search"></span> Search
    						</button>
    						<br />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2" >
				<img src="images/didyouknow.jpg"
					class="img-rounded" alt="Adds" width="194" height="136">
				<button type="button" class="btn btn-link">Check this out</button>
			</div>
		</div>
	</div>
</body>
</html>
