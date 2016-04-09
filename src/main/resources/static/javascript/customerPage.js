$(document).ready(function() {
	$("#selectedOrderId").trigger("click");
});

function onclickCustOrderDetails(sessionUserId, orderId) {
	
	$.ajax(
			{
				url : "http://"+getServicesHost()+"/getOrderbyOrderNumForCustomer/"
						+ sessionUserId + "/" + orderId,
				type : "GET",
				cache : false,
				dataType : "json",
				crossDomain : true
			}).then(function(data) {
				alert(JSON.stringify(data));
				$('#custName').html(data.custName);
				$('#orderDate').html(data.orderTime);
				$('#orderId').html(data.orderNo);
				$('#restName').html(data.resName);
				$('#receiverName').html(data.receiverName);
				$('#deliAdd').html(data.deliAddr);
				$('#pickUpTime').html(data.pickTime);
				$('#reservTime').html(data.resTime);
				$('#noOfPeople').html(data.resPeople);
				$('#nonSmoke').html(data.nonSmoke);
				$('#yourOrder').html(data.numberOfLines);
				$('#orderInstruc').html(data.notes);
				$('#orderStatus').html(data.status);
				$('#msgToRes').html(data.msgToRes);
				$('#msgToCust').html(data.msgToCust);
				
				var items = data.lineItems;
				
//				$('#orderDetailsTable tbody').find("tr").each( function(){
//					
//				});
				
				$('#orderDetailsTable tbody').empty();
				
				$.each(items , function(index , element){
					$('#orderDetailsTable tbody').append("<tr>");
					$('#orderDetailsTable tbody').append("<td>"+element.itemName+"</td>");
					$('#orderDetailsTable tbody').append("<td>"+element.quantity+"</td>");
					$('#orderDetailsTable tbody').append("<td>"+element.price+"</td>");
					$('#orderDetailsTable tbody').append("</tr>");
				});
				
				$('#orderDetailsTable tbody').append("<tr>");
				$('#orderDetailsTable tbody').append("<td></td>");
				$('#orderDetailsTable tbody').append("<td>Tax</td>");
				$('#orderDetailsTable tbody').append("<td>"+data.taxAmount+"</td>");
				$('#orderDetailsTable tbody').append("</tr>");
				
				if(data.orderType != "PickUp"){
					$('#orderDetailsTable tbody').append("<tr>");
					$('#orderDetailsTable tbody').append("<td></td>");
					$('#orderDetailsTable tbody').append("<td>Delivery Fee</td>");
					$('#orderDetailsTable tbody').append("<td>"+data.deliFee+"</td>");
					$('#orderDetailsTable tbody').append("</tr>");
				}
				
				$('#orderDetailsTable tbody').append("<tr>");
				$('#orderDetailsTable tbody').append("<td></td>");
				$('#orderDetailsTable tbody').append("<td>Order Total</td>");
				$('#orderDetailsTable tbody').append("<td>"+data.totPrice+"</td>");
				$('#orderDetailsTable tbody').append("</tr>");
				

	});
}

function onclickSendBtn(sessionUserId){
	
	var msg = $('#msgToRes').val();
	var orderId = $('#orderId').val();
	alert(orderId);
	alert(msg);
	$.ajax(
			{
				url : "http://"+getServicesHost()+"/getOrderbyOrderNumForCustomer/"
						+ sessionUserId + "/" + orderId,
				type : "GET",
				cache : false,
				dataType : "json",
				async: false,
				crossDomain : true
			}).then(function(data) {
				data.msgToRest = data.msgToRest + msg;
				$.ajax(
						{
							 url: "http://"+getServicesHost()+"/updateOrder",
							    method: "PUT",
							    cache: false,
							    data: JSON.stringify(data),
							    contentType: "application/json",
							    async: false,
							    crossDomain: true,
							
						})
			});
			
}