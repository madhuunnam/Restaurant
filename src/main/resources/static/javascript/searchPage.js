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
	        url: "http://localhost:8090/getSavedAddressForCustomer/"+sessionUserId,
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

$(document).ready(function() {
	
	$('#restListTable > tbody > tr').click(function() {
	    document.getElementById("restTableForm").action = "/getRestaurantDetailsPage";
		document.getElementById("restTableForm").submit();
	});
	
});


