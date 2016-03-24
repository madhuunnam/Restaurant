<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Associate Account</title>
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
		<h4>Associate Id: ${sessionUserId}</h4>
		<h4>Associate Email: ${sessionUserName}</h4>
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
			<button type="button" class="btn btn-default" onclick = "onclickAssocAccountPageSubmit(${sessionUserId});">Submit</button>
		</form>
		<br /> <br />
		<div class="col-md-12">
			<form role="form" id="associateAccntDetailsForm">
				<table class="table table-responsive" id="associateAccntDetailsTable">
					<thead>
						<tr>
							<th>Line#</th>
							<th>Date</th>
							<th>ResName</th>
							<th>Com Amount</th>
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



