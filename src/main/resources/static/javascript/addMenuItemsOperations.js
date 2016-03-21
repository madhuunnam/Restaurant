$(document).ready(function() {
	
	$('#addMenuItemsModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
});

function generateAddMenuForm(){
	
	var noOfItemsToGenerate = $('#noOfItemsToAdd').val();
	$('#addItemsLabel').remove();
	$('#noOfItemsToAdd').remove();
	$('#addGivenNoOfMenuItems').remove();
	
	var secNameInputTd = "<td><input class='form-control' type='text' required /></td>";
	var itemNameInputTd = "<td><input class='form-control' type='text' required /></td>";
	var descriptionTd = "<td><input class='form-control' type='text' required /></td>";
	var basePriceTd = "<td><input class='form-control' type='text' required /></td>";
	var inputTR = "<tr>"+secNameInputTd+itemNameInputTd+descriptionTd+basePriceTd+"</tr>";
	
	for (var counter = 0; counter < noOfItemsToGenerate; counter++) {
		var tBody = $('#addGeneratedMenuItemsTable').find("tbody");
		tBody.append(inputTR);
	}
	$('#saveAddedItems').prop('disabled', false);
}

function saveAddedMenuItems(restId){

	$('#addGeneratedMenuItemsTable tbody').find("tr").each(function(){
		
		var addMenuItemRowTDs= [];
		$(this).find('td').each (function() {
			addMenuItemRowTDs.push($(this).find("input").val());
		});

		secName = addMenuItemRowTDs[0];
		itemName = addMenuItemRowTDs[1];
		description = addMenuItemRowTDs[2];
		basePrice = addMenuItemRowTDs[3];
		
		
		var JSONObject= 
		{   "restId":restId, 
			"secName": secName, 
			"itemName":itemName ,
			"description":description,
			"basePrice":basePrice,
			"numChoice":0
		};
		
		$.ajax({
		    url: "http://localhost:8090/addItem",
		    method: "POST",
		    cache: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
//		      alert(result);
		});
		
//		alert(secName +itemName+description +basePrice);
	})
	
	$('#saveAddedItems').prop('disabled', true);
}



