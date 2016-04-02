function onSearch() {
	
//	alert($('#state').val());
//	alert($('#city').val());
	
	// Get Latitude and Longitude if Location is Entered
	
	var geocoder =  new google.maps.Geocoder();
    geocoder.geocode( 
    		{ 'address': $('#location').val() }, 
    		function(results, status) {
    				if (status == google.maps.GeocoderStatus.OK) {
    					$('#latitude').val(results[0].geometry.location.lat());
    					$('#longitude').val(results[0].geometry.location.lng());
    					
    					document.getElementById("searchForm").action = "/getRestaurantListPage";
    					document.getElementById("searchForm").submit();
    				} else {
    					alert("Enter a Valid Address " + status);
    				}
    		});
}

function onclickAddToMyAddress(sessionUserId){
    
    var JSONInputForUpdate;
    var temp = false;
    var noMoreAddressFlag = false;
    var addrToSave = $('#location').val();
    
    if( !addrToSave == null || !addrToSave == ""){
            
            $.ajax({
                    url: "http://"+getServicesHost()+"/getCustCredit/"+sessionUserId,
            type: "GET",
            cache: false,
            dataType: "json",
            async: false,
            crossDomain: true
        }).then(function(data) {
                if((!data['addr2'] == null || ! data['addr2'] == "") && (!data['addr3'] == null || ! data['addr3'] == "") && (!data['addr4'] == null || ! data['addr4'] == "")){
                        alert("You cannot save anymore addresses for your profile. You already have many saved Addresses! Manage them in your profile Screen ");
                        noMoreAddressFlag = true;
                }
                else{
                            if(data['addr2'] == null || data['addr2'] == "" && temp == false){
                                    data['addr2'] = addrToSave;
                                    temp = true;
                            }
                            else if (data['addr3'] == null || data['addr3'] == "" && temp == false){
                                    data['addr3'] = addrToSave;
                                    temp = true;
                            }
                            else if (data['addr4'] == null || data['addr4'] == "" && temp == false){
                                     data['addr4'] = addrToSave;
                                     temp = true;
                            }
                }
                    JSONInputForUpdate = data;
        });
            
            if(noMoreAddressFlag == false){
                    $.ajax({
                        url: "http://"+getServicesHost()+"/updateCustCredit",
                        method: "PUT",
                        cache: false,
                        data: JSON.stringify(JSONInputForUpdate),
                        contentType: "application/json",
                        async: false,
                        crossDomain: true,
                    }).then(function(result,status,jqXHR ){
                    alert(result);
                    });
            }
    }
    else{
            alert("Enter a address to Save");
    }
}


function onclickMyFavorites(sessionUserId){
	 $.ajax({
	        url: "http://"+getServicesHost()+"/getFavRestaurantsForCustomer/"+sessionUserId,
	        type: "GET",
	        cache: false,
	        dataType: "json",
	        crossDomain: true
	    }).then(function(data) {
	    	if($('#favListTable tr').length == 1){
	    		$.each(data, function(index, element) {
	    			$('#favListTable').append('<tr><td>'+element.restId+'</td>'+'<td>'+element.restName+'</td></tr>');
	    		});
	    	}
	    });
}

function onclickMySavedAddress(sessionUserId){
	 $.ajax({
	        url: "http://"+getServicesHost()+"/getCustomerById/"+sessionUserId,
	        type: "GET",
	        cache: false,
	        dataType: "json",
	        crossDomain: true
	    }).then(function(data) {
	    	if($('#savedAddressTable tr').length == 1){
	    			$('#savedAddressTable').append('<tr><td>'+data['stAddress']+', '+data['city']+', '+data['state']+', '+data['zip']+'</td></tr>');
	    			var credits = data['custCredit'];
	    			$.each(credits, function(index, element) {
	    				if( (element != null && element != "" ) && (index == "addr2" || index == "addr3" || index == "addr4") ){
	    					$('#savedAddressTable').append('<tr><td>'+element+'</td></tr>');
	    				}
		    		});
	    	}
	    });
}

$(document).ready(function() {
	
	$('#restListTable > tbody > tr').click(function() {
		
		$('#selectedRest').val(this.id);
	    document.getElementById("restTableForm").action = "/getRestaurantDetailsPage/";
		document.getElementById("restTableForm").submit();
	
	})
	
	$('#savedAddressTable > tbody > tr').click(function() {
		alert("Madu");
//	    document.getElementById("restTableForm").action = "/getRestaurantDetailsPage/";
//		document.getElementById("restTableForm").submit();
	
	})

});


