
function onclickOrderUpdate(orderNo){
	
	var orderStatusToUpdate = $('#restOrderRow-'+orderNo).find("select").val();
	var msgToCustToUpdate = $('#restOrderRow-'+orderNo).find("input[name=msgToCust]").val();
	
	$('#orderNoToUpdate').val(orderNo);
	$('#orderStatusToUpdate').val(orderStatusToUpdate);
	$('#msgToCustToUpdate').val(msgToCustToUpdate);
	
	document.getElementById("restOrderForm").action = "/processOrderUpdate";
	document.getElementById("restOrderForm").submit();
	
}