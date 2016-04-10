<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>TastyHub</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
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
		<div class="row" style="background-color: #0d0d0d;">
			<div class="col-md-8 col-md-offset-2">
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
							<img class="peopleCarouselImg" src="images/hamburger.jpg" alt="Image">
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
							<img class="peopleCarouselImg" src="images/quesadilla.jpg" alt="Image">
							<div class="carousel-caption">
								<p>Mexican Cuisine</p>
							</div>
						</div>
					</div>
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<h3 align='center'>
			<i>Hungry? Enter your location or click links below!</i>
		</h3>
		<form class="form-horizontal" role="form" id="searchForm" >
		
			<input type='hidden' id='latitude' name='latitude' value='0' />
			<input type='hidden' id='longitude' name='longitude' value='0' />
			
			<div class="form-group">
				<label class="control-label col-md-2" for="location"></label>
				<div class="col-md-8">
					<input type="location" class="form-control" id="location" placeholder="Enter your Street Address, City, State">
				</div>
			</div>

			<div class="form-group">
				<#if Session["SPRING_SECURITY_CONTEXT"]?exists> <#if Session["SPRING_SECURITY_CONTEXT"].authentication.principal.userRole == 'customer'>
				<div class=" col-md-offset-2 col-md-3">
					<button type="button" class="btn btn-link form-control" data-toggle="modal" data-target="#myAddress" onclick="onclickMySavedAddress(${sessionUserId});">My Saved Addresses</button>
					<div class="modal fade" id="myAddress" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">My Saved Addresses</h4>
								</div>
								<div class="modal-body">
									<table class="table  table-hover table-responsive " id="savedAddressTable">
										<thead>
											<tr>
												<th>Select any one of your Saved Address:</th>
											</tr>
										<thead>
										<tbody>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<button type="button" class="btn btn-link form-control" onclick="onclickAddToMyAddress(${sessionUserId});">Save This Address</button>
				</div>
				<div class="col-md-3">
					<button type="button" class="btn btn-link form-control" data-toggle="modal" data-target="#myFav" onclick="onclickMyFavorites(${sessionUserId})";>My Favorite Restaurants</button>
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
									<table class="table table-hover table-responsive" id="favListTable">
										<thead>
											<tr>
												<th>RestId</th>
												<th>Rest Name</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</#if> </#if>
			<div class="form-group">
				<div class=" col-md-offset-2 col-md-3">
					<button type="button" class="btn btn-default form-control" data-toggle="modal" data-target="#cuisine">Select Cuisine</button>
					<div class="modal fade" id="cuisine" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Select Cuisine</h4>
								</div>
								<div class="modal-body">
									<form role="form">
										<div class="checkbox col-sm-3">
											<label><input name='cuisine' type="checkbox" checked='true' value="All">All</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine' type="checkbox" value="American">American</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Asian">Asian</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Bagels">Bagels</label>
										</div>
										<div class="checkbox col-sm-3"">
											<label><input name='cuisine'  type="checkbox" value="Bakery">Bakery</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input  name='cuisine' type="checkbox" value="BBQ">BBQ</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Catonese">Catonese</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Chinese">Chinese</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Caribbean">Caribbean</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="CoffeeTea">Coffee & Tea</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Deli">Deli</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Dessert">Dessert</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Greek">Greek</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Grill">Grill</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Hamburgers">Hamburgers</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Healthy">Healthy</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Indian">Indian</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Italian">Italian</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Japanese">Japanese</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="LatinAmerican">LatinAmerican</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="LateNight">LateNight</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="LunchSpecials">LunchSpecials</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Mediterranean">Mediterranean</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Mexican">Mexican</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="MiddleEastern">MiddleEastern</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Noodles">Noodles</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Pasta">Pasta</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Pizza">Pizza</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Salads">Salads</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Sandwich">Sandwich</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Seafood">Sea food</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Smoothies">Smoothies</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Soup">Soup</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Szechwan">Szechwan</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Steak">Steak</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Subs">Subs</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Sushi">Sushi</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Vegetarian">Vegetarian</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Vietnamese">Vietnamese</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Wings">Wings</label>
										</div>
										<div class="checkbox col-sm-3">
											<label><input name='cuisine'  type="checkbox" value="Wraps">Wraps</label>
										</div>
									</form>
								</div>

								<div class="modal-footer">
									<br />
									<button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class=" col-md-3">
					<select name='state' id="state" class="form-control">
						<option value="">Select State</option>
						<option value="Alabama">Alabama</option>
						<option value="Alaska">Alaska</option>
						<option value="Alaska">Arizona</option>
						<option value="Arkansas">Arkansas</option>
						<option value="California">California</option>
						<option value="Colorado">Colorado</option>
						<option value="Connecticut">Connecticut</option>
						<option value="Delaware">Delaware</option>
						<option value="District Of Columbia">District Of Columbia</option>
						<option value="Florida">Florida</option>
						<option value="Georgia">Georgia</option>
						<option value="Hawaii">Hawaii</option>
						<option value="Idaho">Idaho</option>
						<option value="Illinois">Illinois</option>
						<option value="Indiana">Indiana</option>
						<option value="Iowa">Iowa</option>
						<option value="Kansas">Kansas</option>
						<option value="Kentucky">Kentucky</option>
						<option value="Louisiana">Louisiana</option>
						<option value="Maine">Maine</option>
						<option value="Maryland">Maryland</option>
						<option value="Massachusetts">Massachusetts</option>
						<option value="Michigan">Michigan</option>
						<option value="Minnesota">Minnesota</option>
						<option value="Mississippi">Mississippi</option>
						<option value="Missouri">Missouri</option>
						<option value="Montana">Montana</option>
						<option value="Nebraska">Nebraska</option>
						<option value="Nevada">Nevada</option>
						<option value="New Hampshire">New Hampshire</option>
						<option value="New Jersey">New Jersey</option>
						<option value="New Mexico">New Mexico</option>
						<option value="New York">New York</option>
						<option value="North Carolina">North Carolina</option>
						<option value="North Dakota">North Dakota</option>
						<option value="Ohio">Ohio</option>
						<option value="Oklahoma">Oklahoma</option>
						<option value="Oregon">Oregon</option>
						<option value="Pennsylvania">Pennsylvania</option>
						<option value="Rhode Island">Rhode Island</option>
						<option value="South Carolina">South Carolina</option>
						<option value="South Dakota">South Dakota</option>
						<option value="Tennessee">Tennessee</option>
						<option value="Texas">Texas</option>
						<option value="Utah">Utah</option>
						<option value="Vermont">Vermont</option>
						<option value="Virginia">Virginia</option>
						<option value="Washington">Washington</option>
						<option value="West Virginia">West Virginia</option>
						<option value="Wisconsin">Wisconsin</option>
						<option value="Wyoming">Wyoming</option>
					</select>
				</div>
				<div class="col-md-3">
					<input type="text" class="form-control" id="city" name="city" placeholder="Enter City">
				</div>

			</div>
			<div class="form-group">
				<div class="col-md-offset-5 col-md-7">
					<br />
					<button type="button" class="btn btn-info btn-md" id="searchBtn" onclick="onSearch();">
						<span class="glyphicon glyphicon-search"></span> Search
					</button>
				</div>
			</div>
		</form>
	</div>
	<br>
	<footer class="container-fluid text-right" style="background-color: #b3b3b3;"> <a href="<@spring.url '/Home'/> ">Privacy Policy</a> </footer>
</body>
</html>
