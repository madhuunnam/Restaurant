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
<script type="text/javascript" src="javascript/addMenuItemsOperations.js"></script>
<script type="text/javascript" src="javascript/addChoicesOperations.js"></script>
<script type="text/javascript" src="vendor/validator.js"></script>

</head>
<body>
	<#include "../NavBar.ftl">
	<div class="container">
		<form  data-toggle="validator" role="form">
		
				<#include "AddItemsWizards.ftl" >
				<#include "MenuItemsTable.ftl" >
				<#include "MenuChoicesTable.ftl" >
				<#include "MenuChoiceValuesTable.ftl" >
		</form>
	</div>
</body>
</html>



