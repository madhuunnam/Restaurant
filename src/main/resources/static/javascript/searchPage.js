function onSearch() {
	document.getElementById("searchForm").action = "/getRestaurantListPage";
	document.getElementById("searchForm").submit();
}
function onclickAddToMyAddress(){
	alert("Clicked Add to My Address");
}

function onclickMyFavorites(sessionUserId){
	 $.ajax({
	        url: "http://localhost:8090/getFavRestaurantsForCustomer/"+sessionUserId,
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
	        url: "http://localhost:8090/getCustomerById/"+sessionUserId,
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


