
function onclickOrderUpdate(sessionUserId){
	
	$('#restOrdersTable > tbody > tr ').click(function(){
	var orderNo = $(this).find("input").val();
	alert(orderNo+"****"+sessionUserId);
	})
	
//	document.getElementById("restOrderForm").action = "/orderCommit";
//	document.getElementById("restOrderForm").submit();
	
}