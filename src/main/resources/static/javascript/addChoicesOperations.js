$(document).ready(function() {
	
	$('#addChoicesModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
});

function generateAddChoiceForm(){
	var itemSelected = $('#itemSelected').find("option:selected").text();
	var itemNumForSelectedItem = $('#itemSelected').val();
	
	$('#selectedItemNumHidden').val(itemNumForSelectedItem);
	
	var noOfChoicesToGenerate = $('#noOfChoicesToAdd').val();
	
	$('#addChoicesLabel').remove();
	$('#noOfChoicesToAdd').remove();
	$('#addGivenNoOfChoices').remove();
	$('#itemSelected').remove();
	$('#selectItemLabel').remove();
	
	var itemNameInputTd = "<td><label>"+itemSelected+"</label>";
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
	
	var itemNum = $('#selectedItemNumHidden').val();
	
	$('#addGeneratedChoicesTable tbody').find("tr").each(function(){
		
		var addChoiceRowTDs= [];
		$(this).find('td').each (function() {
			addChoiceRowTDs.push($(this).find("input").val());
		});

		itemName = addChoiceRowTDs[0];
		choiceTitle = addChoiceRowTDs[1];
		choiceType = addChoiceRowTDs[2];
		isRequired = addChoiceRowTDs[3];
		
		var JSONObject= 
		{   "restId":restId, 
			"itemNum": itemNum, 
			"chTitle":choiceTitle,
			"chType":choiceType,
//			"required":isRequired
		};
		$.ajax({
		    url: "http://"+getServicesHost()+"/addChoice",
		    method: "POST",
		    cache: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
//		      alert(result);
		});
		
	})
	
	$('#saveAddedChoices').prop('disabled', true);
	$('#addChoicesModalCloseBtn').click();
}



