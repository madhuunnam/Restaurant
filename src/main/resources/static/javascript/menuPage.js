
function addSection(){
	$('#sectionTable').append('<tr><td><input type ="text" id="secNameTextBox" /></td><td><input type = "text" id = "numItemTextBox" /></td><td><button type="button" class="btn btn-link">Add/Update Item</button></td></tr>');
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
		    data: JSON.stringify(JSONObject),
		    contentType: "application/json",
		    crossDomain: true,
		}).then(function(result,status,jqXHR ){
		      alert(result);
		});
	}	
}

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

$(document).ready(function() {
	
	$('#itemsTable > tbody > tr ').dblclick(function() {
		alert($(this).attr("id"));
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
						}
				}
			});  
		}
		
		
		
	});	
	
	
});


