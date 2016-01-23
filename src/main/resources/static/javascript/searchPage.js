function onSearch() {
	document.getElementById("searchForm").action = "/getRestaurantList";
	document.getElementById("searchForm").submit();
}
function onAddToMyAddress(){
	alert("Clicked Add to My Address");
}