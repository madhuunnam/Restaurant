$(document).ready(function() {
	
	$('#restaurantMenuTable > tbody > tr ').click(function() {
		
		var menuItem = $(this).find("input").val();
		var restidItemNum = menuItem.substring(9);
		var restId  = restidItemNum.substr(0,restidItemNum.indexOf("-"));
		var itemNum = restidItemNum.substr(restidItemNum.lastIndexOf("-")+1);
		
		$.ajax({
	        url: "http://localhost:8090/getItemDetailsById/"+restId+"/"+itemNum,
	        type: "GET",
	        cache: false,
	        dataType: "json",
	        crossDomain: true
	    }).then(function(data) {
	    	var choiceObjs = data.choices;
	    	if((choiceObjs.length)==0){
	    		$('#showChoiceOptionsTab tbody').find("tr").remove();
	    		$('#showChoiceOptionsTab tbody').append("<tr><th>Price</th></tr>");
	    		$('#showChoiceOptionsTab tbody').append("<tr><th> $"+data.basePrice+ "</th></tr>");
			}else{
				$('#showChoiceOptionsTab tbody').find("tr").remove();
				var choiceTabStr="";
				$.each(choiceObjs , function(index , element){
					if(element.chValues.length !=0){
						choiceTabStr= choiceTabStr+"<tr><th>"+element.chTitle+"</th></tr>";
						var chValObjs = element.chValues;
						$.each(chValObjs , function(index , e){
							choiceTabStr= choiceTabStr+"<tr>";

							choiceTabStr= choiceTabStr+"<td>";
							choiceTabStr= choiceTabStr+"<input type='radio' name=chValue value="+e.valuePrice +"/> ";
							choiceTabStr= choiceTabStr+"</td>";
							
							choiceTabStr= choiceTabStr+"<td>";
							choiceTabStr= choiceTabStr+"<label >"+e.valueName+"</label>";
							choiceTabStr= choiceTabStr+"</td>";

							
							choiceTabStr= choiceTabStr+"<td>";
							choiceTabStr= choiceTabStr+"<label >$ "+e.valuePrice+"</label>";
							choiceTabStr= choiceTabStr+"</td>";
							
							choiceTabStr= choiceTabStr+"</tr>";

						});
					}
				});
				$('#showChoiceOptionsTab tbody').append(choiceTabStr);
			}
	    });
		$('#addToCartModal').modal();
		
	})
	
	$('#addToCartModal').on('hidden.bs.modal', function () {
		 location.reload();
	})
	
	$('#addtoCardButton').click(function () {
		$('#addItemToCartForm').submit();
	})
	
	
	
	function onclickReserveTable(){
		var reservePeople = $('#peopleCount').val();
		var reserveTime = $('#time').val();
		var nonSmoke = $('#nonsmoke').val();
		alert(reservePeople+reserveTime+nonSmoke);
	}
	
});