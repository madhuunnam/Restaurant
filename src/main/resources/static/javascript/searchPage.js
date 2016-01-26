function onSearch() {
	document.getElementById("searchForm").action = "/getRestaurantListPage";
	document.getElementById("searchForm").submit();
}
function onAddToMyAddress(){
	alert("Clicked Add to My Address");
}
function onSignUpTypeCust() {
	document.getElementById("signUpAsCust").action = "/getCustomerSignUpPage";
	document.getElementById("signUpAsCust").submit();
}
function onSignUpTypeCust() {
	document.getElementById("signUpAsRest").action = "/getRestaurantSignUpPage";
	document.getElementById("signUpAsRest").submit();
}
function onSignUpTypeCust() {
	document.getElementById("signUpAsAssc").action = "/getAssociateSignUpPage";
	document.getElementById("signUpAsAssc").submit();
}
function onSignUpTypeAdmin() {
	document.getElementById("signUpAsAdmin").action = "/getAdminSignUpPage";
	document.getElementById("signUpAsAdmin").submit();
}
$(document).ready(function() {
$('#restListTable > tbody > tr').click(function() {
    document.getElementById("restTableForm").action = "/getRestaurantDetailsPage";
	document.getElementById("restTableForm").submit();
});
});


