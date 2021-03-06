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
		
		<br />
		<form class="form-inline" role="form">
			<div class="form-group">
				 <select id="assocStats"
					class="form-control">
					<option value="">Select</option>
					<option value="Weekly">Weekly</option>
					<option value="Monthly">Monthly</option>
					<option value="Quaterly">Quaterly</option>
					<option value="Annually">Annually</option> 
				</select>
			</div>
			
			<div class="form-group">
				<label for="from">History OR From</label>
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
			<button type="button" class="btn btn-info" onclick = "onclickAssocStatisticsPageSubmit(${sessionUserId});">Go</button>
		</form>
		<br /> <br />
		<div class="col-md-12">
			<form role="form" id="associateStatisticsDetailsForm">
				<table class="table table-responsive" id="associateStatisticsDetailsTable">
					<thead>
						<tr>
							<th>Members#</th>
							
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



