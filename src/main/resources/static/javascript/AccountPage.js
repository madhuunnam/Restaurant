
function onclickRestAccountPageSubmit(sessionUserId){
	
	var recent = $('#recent').val();
	if(recent == "Select"){
		var fromDate = $('#fromDate').val(); 
		var tillDate = $('#toDate').val();
		if(fromDate == "" || tillDate ==""){
			tillDate = "2050-01-01";
			fromDate = "1960-01-01";
		}
	}else if(recent == "Week"){
		 $('#fromDate').val("");
		 $('#toDate').val("");
		var today = new Date();
	    var tillDate = formatDate(today);
	   
	    var oneWeekAgo = new Date();
	    oneWeekAgo.setDate(oneWeekAgo.getDate() - 7);
	    var fromDate = formatDate(oneWeekAgo);
	}else if(recent == "Month"){
		
		$('#fromDate').val("");
		 $('#toDate').val("");
		var today = new Date();
	    var tillDate = formatDate(today);
	   
	    var oneMonthAgo = new Date();
	    oneMonthAgo.setMonth(oneMonthAgo.getMonth() - 1);
	    var fromDate = formatDate(oneMonthAgo);
	}else if(recent == "Year"){
		$('#fromDate').val("");
		 $('#toDate').val("");
		var today = new Date();
	    var tillDate = formatDate(today);
	   
	    var oneYearAgo = new Date();
	    oneYearAgo.setYear(oneYearAgo.getFullYear() - 1);
	    var fromDate = formatDate(oneYearAgo);
	}
	
	$("#restaurantAccntDetailsTable tbody > tr").remove();
	
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
    			$('#adminAccntDetailsTable').append("<tr><td>"+element.ledgerId+"</td>" +
        			"<td>"+element.ledgerDate+"</td><td>"+element.custId+"</td><td>"+element.resId+"</td>" +
        			"<td>"+element.orderNum+"</td><td>"+element.income +"</td><td>"+element.inMethod+"</td><td>"+element.inNote+
        			"</td><td>"+element.expense+"</td><td>"+element.exMethod+"</td><td>"+element.exNote+
        			"</td><td>"+element.note+"</td><td>"+element.balance+"</td></tr>");
        		});
    	}
    });
}


function onclickPickUpOrders(sessionUserId, toDate, fromDate){

	$.ajax({
        url: "http://"+getServicesHost()+"/getPickUpOrderList/"+sessionUserId+"/"+toDate+"/"+fromDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#pickUpOrdersTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#pickUpOrdersTable').append("<tr><td>"+element.orderNo+"</td><td>"+element.orderTime+"</td>" +
        			"<td>"+element.numberOfLines+"</td><td>"+element.custName+"</td><td>"+element.itemName+"</td><td>"+element.totPrice+"</td></tr>");
        		});
    	}
    });
}

function onclickDeliveryOrders(sessionUserId, toDate, fromDate){
	$.ajax({
        url: "http://"+getServicesHost()+"/getDeliveryOrderList/"+sessionUserId+"/"+toDate+"/"+fromDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#deliveryOrdersTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#deliveryOrdersTable').append("<tr><td>"+element.orderNo+"</td><td>"+element.orderTime+"</td>" +
        			"<td>"+element.numberOfLines+"</td><td>"+element.custName+"</td><td>"+element.itemName+"</td><td>"+element.totPrice+"</td></tr>");
        		});
    	}
    });
}

function onclickReservationOrders(sessionUserId, toDate, fromDate){
	$.ajax({
        url: "http://"+getServicesHost()+"/getReservationOrderList/"+sessionUserId+"/"+toDate+"/"+fromDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#reservationOrdersTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#reservationOrdersTable').append("<tr><td>"+element.orderNo+"</td><td>"+element.orderTime+"</td>" +
        			"<td>"+element.numberOfLines+"</td><td>"+element.custName+"</td><td>"+element.totPrice+"</td></tr>");
        		});
    	}
    });
}

function onclickTotalOrders(sessionUserId, toDate, fromDate){
	$.ajax({
        url: "http://"+getServicesHost()+"/getTotalOrderList/"+sessionUserId+"/"+toDate+"/"+fromDate,
        type: "GET",
        cache: false,
        dataType: "json",
        crossDomain: true
    }).then(function(data) {
    	if($('#totalOrdersTable tr').length == 1){
    		$.each(data, function(index, element) {
    			$('#totalOrdersTable').append("<tr><td>"+element.orderNo+"</td><td>"+element.orderTime+"</td>" +
        			"<td>"+element.numberOfLines+"</td><td>"+element.custName+"</td><td>"+element.itemName+"</td><td>"+element.totPrice+"</td></tr>");
        		});
    	}
    });
}

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}





