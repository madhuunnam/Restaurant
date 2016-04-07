$(document).ready(function() {
	
	function calculateTotalOnChangeOfTip(){
		alert($('#orderTip').textVal);
	}
	
	if($('#summaryCartTable tbody tr').length > 0 ){
		var subTotal = 0.0;
		var tax = 0.0;
		var total = 0.0;
		$('#summaryCartTable tbody').find(".lineItemPrice").each(function(){
			subTotal = subTotal + parseFloat($(this).html());
		});
		
		tax = 0.0525 * subTotal ;
		
		total = subTotal +tax ;
		
		tax = Number(tax).toFixed(2);
		total = Number(total).toFixed(2);
		
		$('#summaryCartTable tbody').append("<tr><td></td><td><strong>Sub Total</strong></td><td><strong>$ "+subTotal+"</strong></td></tr");
		$('#summaryCartTable tbody').append("<tr><td></td><td><strong>Tax</strong></td><td><strong>$"+tax+"</strong></td></tr");
		$('#summaryCartTable tbody').append("<tr><td></td><td><strong>Order Total</strong></td><td><strong>$"+total+"</strong></td></tr");
		
	}
	
	if($('#reviewOrderTable tbody tr').length > 0 ){
		
		var subTotal = 0.0;
		var tax = 0.0;
		var total = 0.0;
		var tip =0.0;
		var deliveryFee = 0.0;
		
		$('#reviewOrderTable tbody').find(".lineItemPrice").each(function(){
			subTotal = subTotal + parseFloat($(this).html());
		});
		
		tax = 0.0525 * subTotal ;
		
		total = subTotal +tax ;
		
		tax = Number(tax).toFixed(2);
		total = Number(total).toFixed(2);
		
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Sub Total</strong></td><td><strong>$ "+subTotal+"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Tax</strong></td><td><strong>$"+tax+"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Tip</strong></td><td><strong>$"+ "<input type='text' name='orderTip' id='orderTip' size=5  value=0.0 />" +"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Delivery Fee</strong></td><td><strong>$"+deliveryFee+"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Order Total</strong></td><td id='orderTotal' ><strong>$"+total+"</strong></td></tr");
		
	}
	
//	$('#orderTip').change(function () {
//		
////		alert($('#orderTotal').text().substring(1));
//		var total = 0.0;
//		var tip =0.0;
//		total = Number(parseFloat($('#orderTotal').text().substring(1))).toFixed(2);
//		
//		if($(this).val()=="" ){
//			$(this).val("0.0");
//		}
//		if( isNaN($(this).val())){
//			alert("Please enter the tip in a valid format");
//		}else{
//			total = (1.0) * total +  parseFloat($(this).val());
//		}
//		$('#orderTotal').html("<strong>"+total+"</strong>");
//		
//	})
	
	
	
});


function onclickDeliveryAddressSubmission(){
	
	var deliAddress = $('#deliAddr').val();
	var receiverName = $('#receiverName').val();
	document.getElementById("cartSummaryForm").action = "/deliveryOrder";
	document.getElementById("cartSummaryForm").submit();
	
}

function onclickCancelOrderBtn(){
	
	document.getElementById("reviewOrderForm").action = "/cancelOrder";
	document.getElementById("reviewOrderForm").submit();
	
}




