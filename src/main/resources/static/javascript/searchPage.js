function onSearch() {
	document.getElementById("searchForm").action = "/getRestaurantList";
	document.getElementById("searchForm").submit();
}
function onAddToMyAddress(){
	alert("Clicked Add to My Address");
}
$(document).ready(function() {
$('#restListTable > tbody > tr').click(function() {
    alert("Row clicked");
});
});