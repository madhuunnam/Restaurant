<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Menu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="javascript/menuPage.js"></script>
</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
	<form role="form">
		<div class="form-group">
			<div class="table-responsive">
				<table class="table" id = "sectionTable">
					<thead>
						<tr>
							<th>Section Name</th>
							<th>Number of Items</th>
							<th>Create/Update</th>
						</tr>
					</thead>
					<tbody>
						<#list MenuSections as sec>
						<tr>
							<td>${sec.secName}</td>
							<td>${sec.numItem}</td>
							<td><button type="button" class="btn btn-link">Add/Update
									Item</button></td>
						</tr>
						</#list>
					</tbody>
				</table>
			</div>
		</div>
		<button type="button" class="btn btn-default" onclick="addSection();">Add Section</button>
		<button type="button" class="btn btn-default" onclick="updateSection(${sessionUserId});">Update</button>
	</form>
	</div>
</body>
</html>



