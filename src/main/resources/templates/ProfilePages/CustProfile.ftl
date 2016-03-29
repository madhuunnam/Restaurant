<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<#import "/spring.ftl" as spring />
<html lang="en">
<head>
<title>Customer Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="vendor/validator.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	if ( '${updateCustModel.adChannel}' != null ){
		$('#adChannel').val(${updateCustModel.adChannel});
		}
	if ( '${updateCustModel.cardType}' != null ){
		$('#cardType').val('${updateCustModel.cardType}');
		}
	if ( '${updateCustModel.cardType1}' != null ){
		$('#cardType1').val('${updateCustModel.cardType1}');
		}
	});
	
</script>
<body>
	<#include "../NavBar.ftl"> <#if (showalert)??>
	<div class="alert alert-success">
		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong>${showalert}
	</div>
	</#if>
	<div class="container">
		<div class="row">
			<div class="col-md-12 " style="background-color: #f2f2f2">
				<form data-toggle="validator" class="form-horizontal" role="form" id="custSignUp" action="/updateCustomerProfile">

					<input type="hidden" name="custID" value="<#if updateCustModel.custID??>${updateCustModel.custID}</#if>" />

					<div class="form-group" align="center">
						<label class="col-md-12"><h3>Customer Profile</h3></label>
					</div>
					<label class="col-md-12">BASIC INFO:</label>
					<div class="form-group">
						<label class="control-label col-md-2" for="Name">FirstName: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="firstName" name="firstName" value="<#if updateCustModel.firstName??>${updateCustModel.firstName}</#if>" placeholder="Enter FirstName" required autofocus>
						</div>
						<label class="control-label col-md-2" for="Name">MiddleName: </label>
						<div class="col-md-2">
							<input type="text" class="form-control" name="middleName" id="middleName" value="<#if updateCustModel.middleName??>${updateCustModel.middleName}</#if>" placeholder="Enter MiddleName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2" for="Name">LastName: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="lastName" name="lastName" value="<#if updateCustModel.lastName??>${updateCustModel.lastName}</#if>" placeholder="Enter LastName" required>
						</div>
						<label class="control-label col-md-2" for="nickName">DisplayName: </label>
						<div class="col-md-2">
							<input type="text" class="form-control" id="nickName" name="nickName" value="<#if updateCustModel.nickName??>${updateCustModel.nickName}</#if>" placeholder="Enter LastName" required>
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>Login Information:</h4>
					<div class="form-group">
						<label class="control-label col-md-3" for="email">Email: </label>
						<div class="col-md-6">
							<input type="email" class="form-control" id="custEmail" name="email" value="<#if updateCustModel.email??>${updateCustModel.email}</#if>" placeholder="Enter email" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="pwd">Password: </label>
						<div class="col-md-4">
							<input type="password" class="form-control" id="custPassword" name="password" value="<#if updateCustModel.password??>${updateCustModel.password}</#if>" placeholder="Enter password" required>
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>Contact Information:</h4>
					<div class="form-group">
						<label class="control-label col-md-2" for="phone">Phone: </label>
						<div class="col-md-4">
							<input type="text" class="form-control" id="phone" name="phone" value="<#if updateCustModel.phone??>${updateCustModel.phone}</#if>" placeholder="Enter Phone Number" required>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2" for="Address">Address: </label>
						<div class="col-md-4">
							<input type="text" class="form-control" id="stAddress" name="stAddress" value="<#if updateCustModel.stAddress??>${updateCustModel.stAddress}</#if>" placeholder="Enter Address" required>
						</div>
					</div>
					<div class="form=group">
						<label class="control-label col-md-2" for="city">City: </label>
						<div class="col-md-2">
							<input type="text" class="form-control" id="city" name="city" value="<#if updateCustModel.city??>${updateCustModel.city}</#if>" placeholder="Enter city" required />
						</div>
						<label class="control-label col-md-2" for="state">State: </label>
						<div class="col-md-2">
							<input type="text" class="form-control" id="state" name="state" value="<#if updateCustModel.state??>${updateCustModel.state}</#if>" placeholder="Enter State" required />
						</div>
						<label class="control-label col-md-2" for="zip">Zip: </label>
						<div class="col-md-2">
							<input type="text" class="form-control" id="zip" name="zip" value="<#if updateCustModel.zip??>${updateCustModel.zip}</#if>" placeholder="Enter Zip" required />
						</div>
					</div>
					<br />
					<br />
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>Your Card Information:</h4>
					<label class="col-md-12">Card 1:</label>
					<div class="form-group">
						<label class="control-label col-md-3" for="cardType">Card Type: </label>
						<div class="col-md-3">
							<select id="cardType" name="cardType" value="<#if updateCustModel.cardType??>${updateCustModel.cardType}</#if>" class="form-control">
								<option value="" />
								<option value="Debit">Debit</option>
								<option value="Credit">Credit</option>
							</select>
						</div>
						<label class="control-label col-md-3" for="cardNumber">Card Number: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardNumber" name="cardNumber" value="<#if updateCustModel.cardNumber??>${updateCustModel.cardNumber}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="cardName">CardHolder Name: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardName" name="cardName" value="<#if updateCustModel.cardName??>${updateCustModel.cardName}</#if>">
						</div>
						<label class="control-label col-md-3" for="cardCode">CVV:</label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardCode" name="cardCode" value="<#if updateCustModel.cardCode??>${updateCustModel.cardCode}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="billZip">Billing Zip: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="billZip" name="billZip" value="<#if updateCustModel.billZip??>${updateCustModel.billZip}</#if>">
						</div>
						<label class="control-label col-md-3" for="billAddr">Billing Addr: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="billAddr" name="billAddr" value="<#if updateCustModel.billAddr??>${updateCustModel.billAddr}</#if>">
						</div>
					</div>
					<label class="col-md-12">Card 2:</label>
					<div class="form-group">
						<label class="control-label col-md-3" for="cardType1">Card Type: </label>
						<div class="col-md-3">
							<select id="cardType1" name="cardType1" value="<#if updateCustModel.cardType1??>${updateCustModel.cardType1}</#if>" class="form-control">
								<option value="" />
								<option value="Debit">Debit</option>
								<option value="Credit">Credit</option>
							</select>
						</div>
						<label class="control-label col-md-3" for="cardNumber1">Card Number: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardNumber1" name="cardNumber1" value="<#if updateCustModel.cardNumber1??>${updateCustModel.cardNumber1}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="cardName1">CardHolder Name: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardName1" name="cardName1" value="<#if updateCustModel.cardName1??>${updateCustModel.cardName1}</#if>">
						</div>
						<label class="control-label col-md-3" for="cardCode1">CVV: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="cardCode1" name="cardCode1" value="<#if updateCustModel.cardCode1??>${updateCustModel.cardCode1}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="billZip1">Billing Zip: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="billZip1" name="billZip1" value="<#if updateCustModel.billZip1??>${updateCustModel.billZip1}</#if>">
						</div>
						<label class="control-label col-md-3" for="billAddr1">Billing Addr: </label>
						<div class="col-md-3">
							<input type="text" class="form-control" id="billAddr1" name="billAddr1" value="<#if updateCustModel.billAddr1??>${updateCustModel.billAddr1}</#if>">
						</div>
					</div>
					<hr style="width: 100%; color: #D3D3D3; height: 1px; background-color: #D3D3D3;">
					<h4>Other Addresses</h4>
					<div class="form-group">
						<label class="control-label col-md-3" for="addr2">Address 2: </label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="addr2" name="custCredit.addr2" value="<#if updateCustModel.custCredit.addr2??>${updateCustModel.custCredit.addr2}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="addr3">Address 3: </label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="addr3" name="custCredit.addr3" value="<#if updateCustModel.custCredit.addr3??>${updateCustModel.custCredit.addr3}</#if>">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3" for="addr4">Address 4: </label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="addr4" name="custCredit.addr4" value="<#if updateCustModel.custCredit.addr4??>${updateCustModel.custCredit.addr4}</#if>">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-3 col-md-6">
							<button type="submit" class="btn btn-info">Update Profile</button>
						</div>
					</div>
				</form>
				<br />
			</div>
		</div>
	</div>

</body>
</html>



