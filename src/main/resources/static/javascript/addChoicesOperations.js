$(document).ready(function() {
	
	$('#addChoicesModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
});

function generateAddChoiceForm(){
	
	
//	for (var counter = 0; counter < itemNamesArray.length; counter++) {
//		console.log(itemNamesArray[counter]);
//	}
	var noOfChoicesToGenerate = $('#noOfChoicesToAdd').val();
	$('#addChoicesLabel').remove();
	$('#noOfChoicesToAdd').remove();
	$('#addGivenNoOfChoices').remove();
	
	var itemNameInputTd = "<td><input class='form-control' type='text' required /></td>";
	var ChoiceTitleInputTd = "<td><input class='form-control' type='text' required /></td>";
	var ChoiceTypeInputTd = "<td><input class='form-control' type='text' required /></td>";
	var isRequiredTd = "<td><input type='checkbox' /></td>";
	var inputTR = "<tr>"+itemNameInputTd+ChoiceTitleInputTd+ChoiceTypeInputTd+isRequiredTd+"</tr>";
	
	for (var counter = 0; counter < noOfChoicesToGenerate; counter++) {
		var tBody = $('#addGeneratedChoicesTable').find("tbody");
		tBody.append(inputTR);
	}
	$('#saveAddedChoices').prop('disabled', false);
}

function saveAddedMenuChoices(restId){
	alert("Adding Choices");
	$('#addGeneratedChoicesTable tbody').find("tr").each(function(){
		
		var addChoiceRowTDs= [];
		$(this).find('td').each (function() {
			addChoiceRowTDs.push($(this).find("input").val());
		});

		itemName = addChoiceRowTDs[0];
		choiceTitle = addChoiceRowTDs[1];
		choiceType = addChoiceRowTDs[2];
		isRequired = addChoiceRowTDs[3];
		
		
//		var JSONObject= 
//		{   "restId":restId, 
//			"secName": secName, 
//			"itemName":itemName ,
//			"description":description,
//			"basePrice":basePrice,
//			"numChoice":0
//		};
//		
//		$.ajax({
//		    url: "http://localhost:8090/addItem",
//		    method: "POST",
//		    cache: false,
//		    data: JSON.stringify(JSONObject),
//		    contentType: "application/json",
//		    crossDomain: true,
//		}).then(function(result,status,jqXHR ){
//		      alert(result);
//		});
		
//		alert(secName +itemName+description +basePrice);
	})
	
	$('#saveAddedItems').prop('disabled', true);
}



