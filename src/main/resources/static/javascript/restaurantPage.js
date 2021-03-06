$(document).ready(function() {
	
	$(document).on("click", "#contineBtn", function(event){

		document.getElementById("reserveTableForm").action = "/reserveTable";
		document.getElementById("reserveTableForm").submit();
	});	
	
	$('#restaurantMenuTable > tbody > tr ').click(function() {
		
		var menuItem = $(this).find("input").val();
		var restidItemNum = menuItem.substring(9);
		var restId  = restidItemNum.substr(0,restidItemNum.indexOf("-"));
		var itemNum = restidItemNum.substr(restidItemNum.lastIndexOf("-")+1);
		
		$.ajax({
	        url: "http://"+getServicesHost()+"/getItemDetailsById/"+restId+"/"+itemNum,
	        type: "GET",
	        cache: false,
	        dataType: "json",
	        crossDomain: true
	    }).then(function(data) {
//	    	alert(JSON.stringify(data));
	    	var choiceObjs = data.choices;
	    	if((choiceObjs.length)==0){
	    		$('#showChoiceOptionsTab tbody').find("tr").remove();
	    		$('#showChoiceOptionsTab tbody').find("input").remove();
	    		$('#showChoiceOptionsTab tbody').append("<tr><th>Price</th></tr>");
	    		$('#showChoiceOptionsTab tbody').append("<tr><th> $"+data.basePrice+ "</th></tr>");
	    		$('#showChoiceOptionsTab tbody').append("<input name='chValue' type='hidden' value= "+data.basePrice+" />");
	    		
			}else{
				$('#showChoiceOptionsTab tbody').find("tr").remove();
				$('#showChoiceOptionsTab tbody').find("input").remove();
				
				var choiceTabStr="";
				var flag=false;
				$.each(choiceObjs , function(index , element){
					
					if(element.chValues.length !=0){
						flag=true;
						choiceTabStr= choiceTabStr+"<tr><th>"+element.chTitle+"</th></tr>";
						var chValObjs = element.chValues;
						$.each(chValObjs , function(index , e){
							choiceTabStr= choiceTabStr+"<tr>";

							choiceTabStr= choiceTabStr+"<td>";
							if(index ==0){
								choiceTabStr= choiceTabStr+"<input type='radio' name=chValue value="+e.valuePrice +" checked='checked' /> ";
							}else{
								choiceTabStr= choiceTabStr+"<input type='radio' name=chValue value="+e.valuePrice +" /> ";
							}
							
							choiceTabStr= choiceTabStr+"</td>";
							
							choiceTabStr= choiceTabStr+"<td>";
							choiceTabStr= choiceTabStr+"<label >"+e.valueName+"</label>";
							choiceTabStr= choiceTabStr+"</td>";

							
							choiceTabStr= choiceTabStr+"<td>";
							choiceTabStr= choiceTabStr+"<label >$ "+e.valuePrice+"</label>";
							choiceTabStr= choiceTabStr+"</td>";
							
							choiceTabStr= choiceTabStr+"</tr>";

						});
					}
				});
				
				if(flag ==false){
					$('#showChoiceOptionsTab tbody').append("<tr><th>Price</th></tr>");
					$('#showChoiceOptionsTab tbody').append("<tr><th> $"+data.basePrice+ "</th></tr>");
		    		$('#showChoiceOptionsTab tbody').append("<input name='chValue' type='hidden' value= "+data.basePrice+" />");
				}
				$('#showChoiceOptionsTab tbody').append(choiceTabStr);
			}
	    	$('#showChoiceOptionsTab tbody').append("<input name='itemName' type='hidden' value='"+data.itemName+"' />");
	    	$('#showChoiceOptionsTab tbody').append("<input name='itemNum' type='hidden' value='"+data.itemNum+"' />");
	    });
		$('#addToCartModal').modal();
		
	})
	
	$('#addToCartModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
	$('#addtoCardButton').click(function () {
		$('#addItemToCartForm').submit();
	})

	
});


function onRestaurantSignUp() {
	
	var enteredStAddress = $('#stAddress').val();
	var enteredCity = $('#city').val();
	var enteredState = $('#state').val();
	var enteredZip = $('#zip').val();
	
	var address = enteredStAddress+","+enteredCity+","+enteredState+","+enteredZip;
	
	
	var geocoder =  new google.maps.Geocoder();
    geocoder.geocode( 
    		{ 'address': address }, 
    		function(results, status) {
    				if (status == google.maps.GeocoderStatus.OK) {
    					$('#latitude').val(results[0].geometry.location.lat());
    					$('#longitude').val(results[0].geometry.location.lng());
    					document.getElementById("restSignUp").action = "/registerRestaurant";
    					document.getElementById("restSignUp").submit();
    				} else {
    					alert("Enter a Valid Address " + status);
    				}
    		});
}

function onRestaurantProfileUpdate() {
	
	var enteredStAddress = $('#stAddress').val();
	var enteredCity = $('#city').val();
	var enteredState = $('#state').val();
	var enteredZip = $('#zip').val();
	
	var address = enteredStAddress+","+enteredCity+","+enteredState+","+enteredZip;
	
	
	var geocoder =  new google.maps.Geocoder();
    geocoder.geocode( 
    		{ 'address': address }, 
    		function(results, status) {
    				if (status == google.maps.GeocoderStatus.OK) {
    					$('#latitude').val(results[0].geometry.location.lat());
    					$('#longitude').val(results[0].geometry.location.lng());
    					document.getElementById("updateRestaurantProfile").action = "/updateRestProfile";
    					document.getElementById("updateRestaurantProfile").submit();
    				} else {
    					alert("Enter a Valid Address " + status);
    				}
    		});
}

function onclickUploadImage(){
	alert("Hi you are about to upload the image");
}
function onclickAddToFav(restId, restName, sessionUserId){
	
	var JSONObject= 
	{   "custId":sessionUserId, 
		"restId": restId, 
		"restName":restName
	};
	$.ajax({
        url: "http://"+getServicesHost()+"/addFavorite",
        method: "POST",
        cache: false,
        data: JSON.stringify(JSONObject),
        contentType: "application/json",
        async: false,
        crossDomain: true,
    }).then(function(result,status,jqXHR ){
    	if(result=="Fav SetUp Failed"){
    		alert("It is already one of your Favorite Restaurants!");
    	}else{
    		alert("Added to Favorite Restaurants!");
    	}
    });
}