$(document).ready(function() {
	
	$('#addChoiceValuesModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
});

function generateAddChoiceValuesForm(){
	var choiceSelected = $('#choiceSelected').find("option:selected").text();
	var choiceNumForSelectedItem = $('#choiceSelected').val();
	
	$('#selectedChNumHidden').val(choiceNumForSelectedItem);
	
	var noOfChoiceValuesToGenerate = $('#noOfChoiceValuesToAdd').val();
	
	$('#addChoiceValuesLabel').remove();
	$('#noOfChoiceValuesToAdd').remove();
	$('#addGivenNoOfChoiceValues').remove();
	$('#choiceSelected').remove();
	$('#selectChoiceLabel').remove();
	
	var choiceTitleInputTd = "<td><label>"+choiceSelected+"</label>";
	var valueNameInputTd = "<td><input class='form-control' type='text' required /></td>";
	var valuePriceInputTd = "<td><input class='form-control' type='text' required /></td>";
	var isExtraTd = "<td><input type='checkbox' /></td>";
	var inputTR = "<tr>"+choiceTitleInputTd+valueNameInputTd+valuePriceInputTd+isExtraTd+"</tr>";
	
	for (var counter = 0; counter < noOfChoiceValuesToGenerate; counter++) {
		var tBody = $('#addGeneratedChoiceValuesTable').find("tbody");
		tBody.append(inputTR);
	}
	$('#saveAddedChoiceValues').prop('disabled', false);
}

function saveAddedChoiceValuess(restId){
	
	var chNum = $('#selectedChNumHidden').val();
	$('#addGeneratedChoiceValuesTable tbody').find("tr").each(function(){
		
		var addChoiceValueRowTDs= [];
		$(this).find('td').each (function() {
			addChoiceValueRowTDs.push($(this).find("input").val());
		});

		choiceTitle = addChoiceValueRowTDs[0];
		valueName = addChoiceValueRowTDs[1];
		valuePrice = addChoiceValueRowTDs[2];
		isExtra = addChoiceValueRowTDs[3];
		
		var JSONObject= 
		{   "restId":restId, 
			"chNum": chNum, 
			"valueName": valueName,
			"valuePrice": valuePrice
//			"extra": true
		};
		$.ajax({
		    url: "http://"+getServicesHost()+"/addChoiceValues",
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
	$('#addChValuesModalCloseBtn').click();
}



