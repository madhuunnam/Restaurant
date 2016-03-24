 
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
	var fromDate = $('#fromDate').val();  
	var tillDate = $('#toDate').val();	
	
	$.ajax({
        url: "http://localhost:8090/getCustLedgerListForCustomer/"+sessionUserId+"/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#customerAccntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#customerAccntDetailsTable').append("<tr><td>"+$('#customerAccntDetailsTable tr').length+"</td><td>"+element.ledgerDate+"</td>" +
    				"<td>"+element.resName+"</td><td>"+element.resId+"</td><td>"+element.orderNum+"</td>" +
    				"<td>"+element.chargeAmt+"</td><td>"+element.payAmt+"</td><td>"+element.payMethod+"</td>" +
    				"<td>"+element.note+"</td><td>"+element.balance+"</td></tr>");
    		});
    	}
    });
}
	
function onclickAssocAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
//	var fromDate = $('#fromDate').val();  TODO
//	var tillDate = $('#toDate').val();	 TODO
	
	var fromDate = "2016-3-1";
	var tillDate = "2017-3-8";
	
	$.ajax({
        url: "http://localhost:8090/getAssocLedgerListForAssociate/"+sessionUserId+"/"+fromDate+"/"+tillDate,
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
	

function onclickAdminAccountPageSubmit(){
	
	var recent = $('#recent').val();
//	var fromDate = $('#fromDate').val();  TODO
//	var tillDate = $('#toDate').val();	 TODO
	
	var fromDate = "2016-3-1";
	var tillDate = "2017-3-8";
	
	$.ajax({
        url: "http://localhost:8090/getAdminLedgerList/"+fromDate+"/"+tillDate,
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