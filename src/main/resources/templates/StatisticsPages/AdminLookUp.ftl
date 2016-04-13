<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Admin Account</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script>
  $(function() {
     $('#fromDate').datepicker({ dateFormat: 'yy-mm-dd' });
     $('#toDate').datepicker({ dateFormat: 'yy-mm-dd' });
  });
  </script>

<script type="text/javascript" src="javascript/AccountPage.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<br />
		<br />
		<div class='jumbotron'>
		<form class="form-inline" role="form">
			<div class="row col-md-3">
				<input type='text' class="form-control" id='custName' placeholder="Customer Name" /><br /> <br /> 
				<input type='text' class="form-control" id='custName' placeholder="Restaurant Name" /><br /> <br />
				<input type='text' class="form-control" id='custName' placeholder="Associate Name" /><br /> <br />
			</div>
			<div class="form-group col-md-9">
			<label for="lookUp">Look For</label>
				<select id="lookUp" class="form-control ">
					<option value="">Select</option>
					<option value="Customers">Customers</option>
					<option value="Restaurants">Restaurants</option>
					<option value="Associates">Associates</option>
					<option value="Favorites">Favorites</option>
					<option value="Orders">Orders</option>
					<option value="Items">Items</option>
					<option value="Choices">Choices</option>
					<option value="ChoiceValues">ChoiceValues</option>
				</select>
			</div>
			<br /> <br /> 
			<div class="form-group ">
				<label for="from">Date From</label>
				<div class='input-group date'>
					<input type='text' class="form-control" id='fromDate' /> </span>
				</div>
			</div>
			<div class="form-group">
				<label for="To"> To</label>
				<div class='input-group date'>
					<input type='text' class="form-control" id='toDate' />
				</div>
			</div>
			<br /> <br /> 
			<div class="form-group col-md-9">
			<label for="recent">Or Most Recent</label>
				<select id="adminStats" class="form-control">
					<option value="">Select</option>
					<option value="Week">Week</option>
					<option value="Month">Month</option>
					<option value="Quarter">Quarter</option>
					<option value="Year">Year</option>
				</select>
			</div>
			<br /> <br /> 
			<div class="row col-md-offset-4 col-md-6">
				<button type="button" class="btn btn-info col-md-3" onclick="onclickAdminStatisticsPageSubmit();">Go</button>
			</div>
		</form>
		<br /> <br />
		</div>
		<br /> <br />
		<div class="col-md-12">
			<form role="form" id="adminStatisticsDetailsForm" action="/">
				<table class="table table-responsive table-bordered" id="adminStatisticsDetailsTable">
					<thead>
						<tr>
							<th>Line#</th>
							<th>LineId</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</form>
		</div>
	</div>

</body>
</html>



