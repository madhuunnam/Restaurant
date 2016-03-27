
function addSection(){
	$('#sectionTable').append('<tr><td><input type ="text" id="secNameTextBox" /></td><td><input type = "text" id = "numItemTextBox" /></td><td><button type="button" class="btn btn-link">Add/Update Item</button></td></tr>');
}

function updateChoiceValues(){
	$('#choiceValuesTable tbody').find("tr").each(function() {
		var choiceValRowId = $(this).attr("id");
		var restIdChoiceNumValueId = choiceValRowId.substring("38"); 
		var restId = restIdChoiceNumValueId.substr(0,restIdChoiceNumValueId.indexOf("-"));
		var chNum =restIdChoiceNumValueId.substr(restIdChoiceNumValueId.indexOf("-")+1,restIdChoiceNumValueId.lastIndexOf("-")-2)
		var valueId = choiceValRowId.substring(choiceValRowId.lastIndexOf("-")+1);
		
		var valueNameId = "#valueName-" + restIdChoiceNumValueId;
		var valuePriceId = "#valuePrice-" + restIdChoiceNumValueId;
		
		if((valueName = $(valueNameId).text())== ""){
			valueName = $(valueNameId).find("input").val();
		}
		if((valuePrice = $(valuePriceId).text())== ""){
			valuePrice = $(valuePriceId).find("input").val();
		}

		var JSONObject= 
			{   "restId":restId, 
				"chNum": chNum, 
				"valueId" : valueId,
				"valueName":valueName ,
				"valuePrice":valuePrice
			};
		
//		alert(JSON.stringify(JSONObject));
		$.ajax({
		    url: "http://localhost:8090/updateChoiceValues",
		    method: "PUT",
		    cache: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    async: false,
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
//		      alert(result);
		});
	});
	
	location.reload();
}

function udpateChoices(){
	
	$('#choicesTable tbody').find("tr").each(function() {
		var choiceRowId = $(this).attr("id");
		var restIdItemIdChoiceNum = choiceRowId.substring("34"); 
		var choiceNum = choiceRowId.substring(choiceRowId.lastIndexOf("-")+1);
		var restId = restIdItemIdChoiceNum.substr(0,restIdItemIdChoiceNum.indexOf("-"));
		var itemId = restIdItemIdChoiceNum.substr(restIdItemIdChoiceNum.indexOf("-")+1,restIdItemIdChoiceNum.lastIndexOf("-")-2)
		
		var choiceTitleId = "#chTitle-" + restIdItemIdChoiceNum;
		var choiceTypeId = "#chType-" + restIdItemIdChoiceNum;
		
		if((choiceTitle = $(choiceTitleId).text())== ""){
			choiceTitle = $(choiceTitleId).find("input").val();
		}
		if((choiceType = $(choiceTypeId).text())== ""){
			choiceType = $(choiceTypeId).find("input").val();
		}

		var JSONObject= 
			{   "restId":restId, 
				"itemNum": itemId, 
				"chNum":choiceNum ,
				"chTitle":choiceTitle,
				"chType":choiceType
			};
		
		$.ajax({
		    url: "http://localhost:8090/updateChoice",
		    method: "PUT",
		    cache: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    async: false,
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
//		      alert(result);
		});
	});
	
	location.reload();
}

function updateAllMenuItems(){
	$('#itemsTable tbody').find("tr").each(function() {
		
		var menuItemRowId = $(this).attr("id");
		var restIdItemId = menuItemRowId.substring("26");
		var restId = restIdItemId.substr(0,restIdItemId.indexOf("-"));
		var itemId = menuItemRowId.substring(menuItemRowId.lastIndexOf("-")+1);
		var sectionNameId = "#secName-" + restIdItemId;
		var itemNameId = "#itemName-"+ restIdItemId;
		var descriptionId = "#description-"+ restIdItemId;
		var basePriceId = "#basePrice-"+ restIdItemId;
		
		if((sectionName = $(sectionNameId).text())== ""){
			sectionName = $(sectionNameId).find("input").val();
		}
		if((itemName = $(itemNameId).text())== ""){
			itemName = $(itemNameId).find("input").val();
		}
		if((description = $(descriptionId).text())== ""){
			description = $(descriptionId).find("input").val();
		}
		if((basePrice = $(basePriceId).text())== ""){
			basePrice = $(basePriceId).find("input").val();
		}
		
		var JSONObject= 
			{   "restId":restId, 
				"secName": sectionName, 
				"itemName":itemName ,
				"itemNum":itemId,
				"description":description,
				"basePrice":basePrice
			};
		
//		alert(JSON.stringify(JSONObject));
		$.ajax({
		    url: "http://localhost:8090/updateItem",
		    method: "PUT",
		    cache: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    async: false,
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
//		      alert(result);
		});
	});
	
	location.reload();
}

function updateSection(sessionUserId){
	
	var secName = $('#secNameTextBox').val();
	var numItem = $('#numItemTextBox').val();
	if(secName != "" && numItem != ""){
		
		var JSONObject= {"restId":sessionUserId, "secName": secName, "numItem":numItem };
		$.ajax({
		    url: "http://localhost:8090/addSection",
		    method: "POST",
		    cache: false,
		    async: false,
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
		      alert(result);
		});
	}	
}


$(document).ready(function() {
	
	$('#itemsTable > tbody > tr ').dblclick(function() {
		//alert($(this).attr("id"));
		var temp =false;
		if($(this).attr("id") !=null && $(this).attr("id").indexOf("menuItemRow-restId-itemID")>-1){ 
			
			$(this).children('td').each (function() {
				
				if($(this).attr("id") !=null && (
							$(this).attr("id").indexOf("secName")>-1
							|| $(this).attr("id").indexOf("itemName")>-1
							|| $(this).attr("id").indexOf("description")>-1
							|| $(this).attr("id").indexOf("basePrice")>-1
						)
					){
					
						var inputText = $(this).text();
						if(inputText != null && inputText!= "" ){
							var element = "<input type=text value='"+inputText+"'  />";
							$(this).html(element);
							temp =true;
						}
				}
			});  
		}
		if(temp == true){
			$('#updateAllItems').prop('disabled', false);
		}
		
	});	
	
	
	$('#choicesTable > tbody > tr ').dblclick(function() {
		var temp =false;
		
		$(this).find('td').each (function() {
			var choiceTDId= $(this).attr("id");
			if(choiceTDId !=null && (
						choiceTDId.indexOf("chTitle") > -1
						|| choiceTDId.indexOf("chType") > -1
					))
			{
					var inputText = $(this).text();
					if(inputText != null && inputText!= "" ){
						var element = "<input type=text value='"+inputText+"'  />";
						$(this).html(element);
						temp =true;
					}
			}
			if(temp == true){
				$('#updateAllChoices').prop('disabled', false);
			}
		});  
		
	});	
	
	$('#choiceValuesTable > tbody > tr ').dblclick(function() {
		var temp =false;
		
		$(this).find('td').each (function() {
			var choiceValTDId = $(this).attr("id")
			if(choiceValTDId !=null && 
					( choiceValTDId.indexOf("valueName") >-1
					|| choiceValTDId.indexOf("valuePrice") >-1
					)
			
			){
					var inputText = $(this).text();
					if(inputText != null && inputText!= "" ){
						var element = "<input type=text value='"+inputText+"'  />";
						$(this).html(element);
						temp =true;
					}
			}
			if(temp == true){
				$('#updateAllChoiceValues').prop('disabled', false);
			}
		});  
		
	});	
	
	
});


function toggleChoices(restId , itemId){
	
	var buttonID ="#ToggleChoicesButton-itemId-"+itemId;
//	alert($(buttonID).val());
	
	if($(buttonID).val() == "Show Choices"){
		
		$(buttonID).val("Hide Choices");
		
		$.ajax({
		    url: "http://localhost:8090/getChoiceListForItemOfRestaurant/"+restId+"/"+itemId,
		    method: "GET",
		    contentType: "application/json",
		    cache: false,
		    crossDomain: true,
		}).then(function(result){
			  //alert(JSON.stringify(result));
			  var itemIdElem = '#itemId-'+itemId; //Find the TD that contains the Show Choices Button
			  $('#itemsTable').find(itemIdElem)
			  		.append(
			  			"<div class='table-responsive'>" +
				  			"<table class='table table-striped table-hover table-responsive ' id = 'choicesTable-"+ itemId + "' >"+
				  				"<thead>"+
						  			"<tr>" +
							  			"<th>Choice Title</th>" +
							  			"<th>Choice Type</th>" +
						  			"</tr>" +
					  			"</thead>" +
						  	"</table>" +
						 "</div>"
			  		);
			  
			  var tbody="";
			  $.each(result, function(key, value) {
				  tbody = tbody + "<tr>";
				  tbody = tbody+"<td>"+value['chTitle']+"</td>";
				  tbody = tbody+"<td>"+value['chType']+"</td>";
				  tbody = tbody + "</tr>";
				});
			  
			  
			  $('#choicesTable-'+itemId).append("<tbody>" + tbody + "</tbody>");
					  
			  
		});
	} else {
		var closestTR = $(buttonID).closest("tr");
		$(buttonID).closest("td").remove();
		var toggleButtonID = "ToggleChoicesButton-itemId-" +itemId;
		var elem = "<td id= 'itemId-"+itemId+"' ><input type='button' id="+toggleButtonID +" class='btn-info' onClick='toggleChoices("+restId+","+itemId+ " );'  value='Show Choices' /></td>";
		closestTR.append(elem);
	}
}


