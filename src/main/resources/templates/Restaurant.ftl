<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/searchPage.js"></script>

</head>
<body>
<#include "NavBar.ftl">
<div class="jumbotron" >
  <div class="container text-left">
    <button type="button" class="btn btn-link"
						data-toggle="modal" data-target="#restDetails"><h3><i>Restaurant Name</i></h3></button> 
    <!-- Modal -->
  <div class="modal fade" id="restDetails" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Restaurant Details</h4>
        </div>
        <div class="modal-body">
          <p>Timings</p>
          <p>Reviews</p>
          <p>Yelp Reviews</p>
          <p>Comments</p>
          <p>DineIn</p>
          <p>Delivery</p>
          <p>PickUp</p>
          <p>Open Hours</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>   
  </div>
</div>
<div class="panel panel-primary">
  <div class="panel-heading">Menu</div>
  <div class="panel-body">
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  <p>Sample Menu TODO</p>
  
  </div>
</div>
  <ul class="pager">
    <li class="previous"><a href="<@spring.url '/getRestaurantListPage'/>">Back</a></li>
  </ul>
</body>
</html>



