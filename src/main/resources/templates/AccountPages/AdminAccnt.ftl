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
		<h4>Admin Id: ${sessionUserId}</h4>
		<h4>Admin Email: ${sessionUserName}</h4>
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
				<label for="from"> OR From</label>
				<div class='input-group date' >
					<input type='text' class="form-control"  id='fromDate'/> 
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="To"> To</label>
				<div class='input-group date' >
					<input type='text' class="form-control" id='toDate' /> 
				</div>
			</div>
			<button type="button" class="btn btn-info" onclick = "onclickAdminAccountPageSubmit();">Go</button>
		</form>
		<br /> <br />
		<div class="col-md-12">
			<form role="form" id="adminAccntDetailsForm" action="/">
				<table class="table table-responsive" id="adminAccntDetailsTable">
					<thead>
						<tr>
							<th>LineId</th>
							<th>Date</th>
							<th>CustID</td>
							<th>ResID</th>
						<!--	<th>AssocID</th> -->
							<th>OrderId</th>
							<th>Income</th>
							<th>In Method</th>
							<th>In Note</th>
							<th>Expense</th>
							<th>ExpenseMethod</th>
							<th>ExpenseNote</th>
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



