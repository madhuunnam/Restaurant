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
					<table class="table table-striped table-hover table-responsive"
						id="itemsTable">
						<thead>
							<tr>
								<th>Section Name</th>
								<th>Item Name</th>
								<th>Description</th>
								<th>BasePrice</th>
								<!-- <th>Choices</th> -->
							</tr>
						</thead>
						<tbody>
							<#list MenuItems as item>
							<tr id='menuItemRow-restId-itemID-${item.restId}-${item.itemNum}'
								class="menuItemRow-restId-itemID">
								<#if item.secName??>
								<td id='secName-${item.restId}-${item.itemNum}'>${item.secName}</td><#else>
								<td id='secName-${item.restId}-${item.itemNum}'></td></#if> <#if
								item.itemName??>
								<td id='itemName-${item.restId}-${item.itemNum}'>${item.itemName}</td><#else>
								<td id='itemName-${item.restId}-${item.itemNum}'></td></#if>
								<#if item.description??>
								<td id='description-${item.restId}-${item.itemNum}'>${item.description}</td><#else>
								<td id='description-${item.restId}-${item.itemNum}'></td></#if>
								<#if item.basePrice??>
								<td id='basePrice-${item.restId}-${item.itemNum}'>${item.basePrice}</td><#else>
								<td id='basePrice-${item.restId}-${item.itemNum}'></td></#if>
								<!--	<td id= 'itemId-${item.itemNum}' >
								<div class="table-responsive">
									<table class="table table-striped table-hover table-responsive" id = "itemsTable">
										<thead>
											<tr>
												<th>Choice Title</th>
												<th>Choice Type</th>	
												<th>Choice Values</th>	
											</tr>
										</thead>
										<tbody>
											<#list item.choices as choice>
												<tr>
													<#if choice.chTitle??><td>${choice.chTitle}</td></#if>
													<#if choice.chType??><td>${choice.chType}</td></#if>	
													<td>
														<div class="table-responsive">
															<table class="table table-striped table-hover table-responsive" id = "itemsTable">
																<thead>
																	<tr>
																		<th>Value Name</th>
																		<th>Value Price</th>
																		<th>Is Extra</th>
																	</tr>
																</thead>
																<tbody>
																	<#list choice.chValues as choiceValue>
																		<tr>
																			<#if choiceValue.valueName??><td>${choiceValue.valueName}</td></#if>
																			<#if choiceValue.valuePrice??><td>${choiceValue.valuePrice}</td></#if>
																			<#if choiceValue.valueName??><td>${choiceValue.valueName}</td></#if>
																		</tr>
																	</#list>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
											</#list>
										</tbody>
									</table>
								</div>
							</td> -->
							</tr>
							</#list>
						</tbody>

					</table>
					<input type="button" value="Update All Items" class="btn btn-info"
							id='updateAllItems' disabled=true onClick=updateAllItems(); />
				</div>
				<div class="form-group">
					<div class="table-responsive">
						<table class="table table-striped table-hover table-responsive" id="choicesTable">
							<thead>
								<tr>
									<th>Item Name</th>
									<th>Choice Title</th>
									<th>Choice Type</th>
									<th>Is Required</th>
								</tr>
							</thead>
							<tbody>
								<#list MenuItems as item>
									<#list item.choices as choice>
										<tr>
										<#if item.itemName??><td id='itemName-${item.restId}-${item.itemNum}-${choice.chNum}' >${item.itemName}</td></#if>
										<#if choice.chTitle??><td id='chTitle-${item.restId}-${item.itemNum}-${choice.chNum}' >${choice.chTitle}</td></#if>
										<#if choice.chType??><td id='chType-${item.restId}-${item.itemNum}-${choice.chNum}' >${choice.chType}</td></#if>	
										<#if choice.required??><td><input type = "checkbox" /></td></#if>
										</tr>
									</#list>
								</#list>
							</tbody>
						</table>
						</div>
					</div>
					<input type="button" value="Update All Choices" class="btn btn-info"
							id='updateAllChoices' disabled=true onClick=updateAllChoices(); />
				</div>
				<div class="form-group">
					<div class="table-responsive">
						<table class="table table-striped table-hover table-responsive" id="choiceValuesTable">
							<thead>
								<tr>
									<th>Choice Title</th>
									<th>Choice Type</th>
									<th>Value Name</th>
									<th>Value Price</th>
									<th>Is Extra ?</th>
								</tr>
							</thead>
							<tbody>
								<#list MenuItems as item>
									<#list item.choices as choice>
										<#list choice.chValues as choiceValue>
											<tr>
												<#if choice.chTitle??><td id="${choice.chTitle}" >${choice.chTitle}</td></#if>
												<#if choice.chType??><td id="${choice.chType}" >${choice.chType}</td></#if>	
												<#if choiceValue.valueName??><td>${choiceValue.valueName}</td></#if>
												<#if choiceValue.valuePrice??><td>${choiceValue.valuePrice}</td></#if>
												<#if choiceValue.valueName??><td><input type="checkbox" /></td></#if>
											</tr>
										</#list>
									</#list>
								</#list>
							</tbody>
						</table>
						</div>
					</div>
				</div>
		</form>
	</div>
</body>
</html>



