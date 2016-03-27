$(document).ready(function() {
	
	if($('#summaryCartTable tbody tr').length > 0 ){
		
		var subTotal = 0.0;
		var tax = 0.0;
		var total = 0.0;
		$('#summaryCartTable tbody').find(".lineItemPrice").each(function(){
			subTotal = subTotal + parseFloat($(this).html());
		});
		
		tax = 0.056 * subTotal ;
		
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
		
		tax = 0.056 * subTotal ;
		
		total = subTotal +tax ;
		
		tax = Number(tax).toFixed(2);
		total = Number(total).toFixed(2);
		
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Sub Total</strong></td><td><strong>$ "+subTotal+"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Tax</strong></td><td><strong>$"+tax+"</strong></td></tr");
		$('#reviewOrderTable tbody').append("<tr><td></td><td><strong>Order Total</strong></td><td><strong>$"+total+"</strong></td></tr");
		
	}
	
	
});