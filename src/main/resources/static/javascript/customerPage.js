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
				$('#msgToRest').html(data.msgToRes);
				$('#msgFromRest').html(data.msgFromRest);

	});
}