 
// $(document).ready(function() {
//		alert("MADHU BANGARAM");
//	 $("#datepicker1").datepicker();
//		
//	});
// 
//
//    $( '#date').datepicker({});

function onclickRestAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
//	var fromDate = $('#fromDate').val();  TODO
//	var tillDate = $('#toDate').val();	 TODO
	
	var fromDate = "2016-3-1";
	var tillDate = "2017-3-8";
	
	$.ajax({
        url: "http://localhost:8090/getRestLedgerListForRest/"+sessionUserId+"/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#accntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#accntDetailsTable').append('<tr><td>'+element.orderNum+'</td>'+'<td>'+element.ledgerNum+'</td></tr>');
    		});
    	}
    });
}

function onclickCustAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
//	var fromDate = $('#fromDate').val();  TODO
//	var tillDate = $('#toDate').val();	 TODO
	
	var fromDate = "2016-3-1";
	var tillDate = "2017-3-8";
	
	$.ajax({
        url: "http://localhost:8090/getCustLedgerListForCustomer/"+sessionUserId+"/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#accntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#accntDetailsTable').append('<tr><td>'+element.orderNum+'</td>'+'<td>'+element.ledgerNum+'</td></tr>');
    		});
    	}
    });
}
	
