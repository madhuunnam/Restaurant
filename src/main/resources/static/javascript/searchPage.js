function onSearch() {
	document.getElementById("searchForm").action = "/getRestaurantListPage";
	document.getElementById("searchForm").submit();
}
function onAddToMyAddress(){
	alert("Clicked Add to My Address");
}

$(document).ready(function() {
	
$('#restListTable > tbody > tr').click(function() {
    document.getElementById("restTableForm").action = "/getRestaurantDetailsPage";
	document.getElementById("restTableForm").submit();
});

});


