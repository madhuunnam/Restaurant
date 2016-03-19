<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Admin Account</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/AccountPage.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">	
<div class="bootstrap-iso">
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-6 col-sm-6 col-xs-12">
    <form method="post">
    <h4>My reivew for Restaurant: on orderDate is as follows: </h4>
     <div class="form-group ">
      <label class="control-label " for="promptness">
       Promptness:
      </label>
      <select class="select form-control" id="promptness" name="promptness">
       <option value="1.0">1.0</option>
       <option value="1.5">1.5</option>
       <option value="2.0">2.0</option>
       <option value="2.5">2.5</option>
       <option value="3.0">3.0</option>
       <option value="3.5">3.5</option>
       <option value="4.0">4.0</option>
       <option value="4.5">4.5</option>
       <option value="5.0">5.0</option>
      </select>
     </div>
     <div class="form-group ">
      <label class="control-label " for="properPrice">
       Proper Price
      </label>
      <select class="select form-control" id="properPrice" name="properPrice">
       <option value="1.0">1.0</option>
       <option value="1.5">1.5</option>
       <option value="2.0">2.0</option>
       <option value="2.5">2.5</option>
       <option value="3.0">3.0</option>
       <option value="3.5">3.5</option>
       <option value="4.0">4.0</option>
       <option value="4.5">4.5</option>
       <option value="5.0">5.0</option>
      </select>
     </div>
     <div class="form-group ">
      <label class="control-label " for="foodQuality">
       Food Quality
      </label>
      <select class="select form-control" id="foodQuality" name="foodQuality">
       <option value="1.0">1.0</option>
       <option value="1.5">1.5</option>
       <option value="2.0">2.0</option>
       <option value="2.5">2.5</option>
       <option value="3.0">3.0</option>
       <option value="3.5">3.5</option>
       <option value="4.0">4.0</option>
       <option value="4.5">4.5</option>
       <option value="5.0">5.0</option>
      </select>
     </div>
     <div class="form-group ">
      <label class="control-label " for="overall">
       Overall:
      </label>
      <select class="select form-control" id="overall" name="overall">
       <option value="1.0">1.0</option>
       <option value="1.5">1.5</option>
       <option value="2.0">2.0</option>
       <option value="2.5">2.5</option>
       <option value="3.0">3.0</option>
       <option value="3.5">3.5</option>
       <option value="4.0">4.0</option>
       <option value="4.5">4.5</option>
       <option value="5.0">5.0</option>
      </select>
     </div>
     <div class="form-group ">
      <label class="control-label " for="text">
       Subject Line/Title
      </label>
      <input class="form-control" id="text" name="text" type="text"/>
     </div>
     <div class="form-group ">
      <label class="control-label " for="textarea">
       Review Content:
      </label>
      <textarea class="form-control" cols="40" id="textarea" name="textarea" rows="10"></textarea>
     </div>
     <p> Remember, you have several other ways to acquire your store credits for next free meal! Thanks for dining!
     <div class="form-group">
      <div>
       <button class="btn btn-info outline" name="submit" type="submit">
        Submit
       </button>
      </div>
     </div>
    </form>
   </div>
  </div>
 </div>
</div>
</body>
</html>