<div class="form-group">

	<input type="button" value="Add Menu Items Wizard" class="btn btn-info"
		id='addMenuItemsModalId' data-toggle="modal"
		data-target="#addMenuItemsModal" />
		
	<input type="button" value="Add Choices Wizard" class="btn btn-info"
		id='addChoicesModalId' data-toggle="modal"
		data-target="#addChoicesModal" />
	<#include "AddMenuItemsModalWizard.ftl" >
	<#include "AddChoicesModalWizard.ftl" >
</div>