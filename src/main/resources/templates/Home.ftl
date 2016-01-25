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
<script type="text/javascript" src="javascript/searchPage.js"></script>
<style>
.peopleCarouselImg img {
	width: 100%;
	height: 355px;
	max-height: 355px;
}
</style>
</head>
<body>
	<#include "NavBar.ftl">
<div class="container-fluid">
<div class="row" style="background-color: #0d0d0d;" >
  <div class="col-md-8 col-md-offset-2" >
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner peopleCarouselImg" role="listbox">
			<div class="item active">
				<img class="peopleCarouselImg" src="images/hamburger.jpg"
					alt="Image">
				<div class="carousel-caption">
					<p>American Cuisine</p>
				</div>
			</div>
			<div class="item">
				<img class="peopleCarouselImg " src="images/chinese.jpg" alt="Image">
				<div class="carousel-caption">
					<p>Chinese Cuisine</p>
				</div>
			</div>
			<div class="item">
				<img class="peopleCarouselImg " src="images/SouthIndian.jpg" alt="Image">
				<div class="carousel-caption">
					<p>Indian Cuisine</p>
				</div>
			</div>
			<div class="item">
				<img class="peopleCarouselImg" src="images/quesadilla.jpg"
					alt="Image">
				<div class="carousel-caption">
					<p>Mexican Cuisine</p>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</div>
	</div>
	</div>
	<div class="container-fluid">
		<h3 align='center'>
			<i>Hungry? Enter your location and select a Restaurant to order!</i>
		</h3>
		<form class="form-horizontal" role="form" id="searchForm"
			action="/getRestaurantListPage">

			<div class="form-group">
				<label class="control-label col-md-2" for="location"></label>
				<div class="col-md-8">
					<input type="location" class="form-control" id="location"
						placeholder="Enter your Street Address, City, State">
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-4">
					<button type="button" class="btn btn-link form-control"
						data-toggle="modal" data-target="#myAddress">My Address</button>
					<div class="modal fade" id="myAddress" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">My Address</h4>
								</div>
								<div class="modal-body">
									<p>Please select an address.</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-4">
					<button type="button" class="btn btn-link form-control" onclick = "onAddToMyAddress();">Add
						To My Address</button>
						
				</div>
				<div class="col-md-4">
					<button type="button" class="btn btn-link form-control" data-toggle="modal" data-target="#myFav">My
						Favorites</button>
						<div class="modal fade" id="myFav" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">My Favorites</h4>
								</div>
								<div class="modal-body">
									<p>Select any one of your Favorites</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-4">
					<select id="state" class="form-control">
						<option value="">Select State</option>
						<option value="NC">NC</option>
						<option value="SC">SC</option>
						<option value="FL">FL</option>
					</select>
				</div>
				<div class="col-md-4">
					<select id="city" class="form-control">
						<option value="">Select City</option>
						<option value="Greensboro">Greensboro</option>
						<option value="Charlotte">Charlotte</option>
						<option value="Raleigh">Raleigh</option>
					</select>
				</div>
				<div class="col-md-4">
					<select id="cuisine" class="form-control">
						<option value="">Select Cuisine</option>
						<option value="American">American</option>
						<option value="Chinese">Chinese</option>
						<option value="Mexican">Mexican</option>
						<option value="Mexican">Indian</option>
						<option value="Mexican">Japanese</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-5 col-md-7">
					<button type="button" class="btn btn-info btn-md" id="searchBtn"
						onclick="onSearch();">
						<span class="glyphicon glyphicon-search"></span> Search
					</button>
				</div>
			</div>
		</form>
	</div>
	<br>
	<footer class="container-fluid text-right"
		style="background-color: #b3b3b3;"> <a
		href="<@spring.url '/Home'/> ">Privacy Policy</a>
	<p></p>
	</footer>
</body>
</html>