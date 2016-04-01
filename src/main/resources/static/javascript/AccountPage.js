
function onclickRestAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
	var fromDate = $('#fromDate').val(); 
	var tillDate = $('#toDate').val();	
	
	$.ajax({
        url: "http://"+getServicesHost()+"/getRestLedgerListForRest/"+sessionUserId+"/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#restaurantAccntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#restaurantAccntDetailsTable').append("<tr><td>"+$('#restaurantAccntDetailsTable tr').length+"</td><td>"+element.ledgerDate+"</td>" +
        				"<td>"+element.custName+"</td><td>"+element.orderNum+"</td>" +
        				"<td>"+element.chargeAmt+"</td><td>"+element.payAmt+"</td><td>"+element.payMethod+"</td>" +
        				"<td>"+element.checkNum+"</td><td>"+element.note+"</td><td>"+element.balance+"</td></tr>");
        		});
    	}
    });
}

function onclickCustAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
	var fromDate = $('#fromDate').val();  
	var tillDate = $('#toDate').val();	
	
	$.ajax({
        url: "http://"+getServicesHost()+"/getCustLedgerListForCustomer/"+sessionUserId+"/"+fromDate+"/"+tillDate,
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
	var fromDate = $('#fromDate').val(); 
	var tillDate = $('#toDate').val();	
	
	$.ajax({
        url: "http://"+getServicesHost()+"/getAssocLedgerListForAssociate/"+sessionUserId+"/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#associateAccntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#associateAccntDetailsTable').append("<tr><td>"+$('#associateAccntDetailsTable tr').length+"</td><td>"+element.ledgerDate+"</td>" +
        				"<td>"+element.resName+"</td><td>"+element.comAmt+"</td><td>"+element.payAmt+"</td><td>"+element.payMethod+"</td>" +
        				"<td>"+element.note+"</td><td>"+element.balance+"</td></tr>");
        		});
    	}
    });
}
	

function onclickAdminAccountPageSubmit(){
	
	var recent = $('#recent').val();
	var fromDate = $('#fromDate').val();  
	var tillDate = $('#toDate').val();	 
	
	$.ajax({
        url: "http://"+getServicesHost()+"/getAdminLedgerList/"+fromDate+"/"+tillDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#adminAccntDetailsTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#adminAccntDetailsTable').append("<tr><td>"+element.ledgerNum+"</td><td>"+element.ledgerId+"</td>" +
        			"<td>"+element.ledgerDate+"</td><td>"+element.custId+"</td><td>"+element.resId+"</td><td>"+element.assocId+"</td>" +
        			"<td>"+element.orderNum+"</td><td>"+element.income +"</td><td>"+element.inMethod+"</td><td>"+element.inNote+
        			"</td><td>"+element.expense+"</td><td>"+element.exMethod+"</td><td>"+element.exNote+
        			"</td><td>"+element.note+"</td><td>"+element.balance+"</td></tr>");
        		});
    	}
    });
}