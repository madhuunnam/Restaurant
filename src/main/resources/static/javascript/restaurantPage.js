
$(document).ready(function() {
	
	$('#restMenuTable > tbody > tr').click(function() {
		
		alert("Menu ITem selected"); 
	   
	
	})
	
});

function onclickReserveTable(){
	var reservePeople = $('#peopleCount').val();
	var reserveTime = $('#time').val();
	var nonSmoke = $('#nonsmoke').val();
	alert(reservePeople+reserveTime+nonSmoke);
}
