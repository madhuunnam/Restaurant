
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

