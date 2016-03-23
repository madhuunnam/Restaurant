<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Restaurant Account</title>
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
	<div class="container">
		<h4>Restaurant Id: ${sessionUserId}</h4>
		<h4>Restaurant Email: ${sessionUserName}</h4>
		<br />
		<form class="form-inline" role="form">
			<div class="form-group">
				<label for="mostRecent">Most Recent:</label> <select id="recent"
					class="form-control">
					<option value="">Select</option>
					<option value="Week">Week</option>
					<option value="Month">Month</option>
					<option value="Year">Year</option>
				</select>
			</div>
			<div class="form-group">
				<label for="from"> Or From:</label>
				<div class='input-group date' id='datepicker1'>
					<input type='text' class="form-control" id="fromDate"/> <span
						class="input-group-addon"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="from"> To</label>
				<div class='input-group date' id='datepicker2'>
					<input type='text' class="form-control" id="toDate"/> <span
						class="input-group-addon"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
			</div>
			<button type="submit" class="btn btn-default" onclick = "onclickRestAccountPageSubmit(${sessionUserId});">Submit</button>
		</form>
		<br /> <br />
		<div class="container">
			<form role="form" id="accntDetailsForm" >
				<table class="table table-responsive" id="accntDetailsTable">
					<thead>
						<tr>
							<th>Line#</th>
							<th>Date</th>
							<th>ResName</th>
							<th>ResID</th>
							<th>Order#</th>
							<th>Charge Amt</th>
							<th>Pay Amt</th>
							<th>Pay Method</th>
							<th>Note</th>
							<th>Balance</th>
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



