<div class="form-group">

	<input type="button" value="Add Menu Items Wizard" class="btn btn-info"
		id='addMenuItemsModalId' data-toggle="modal"
		data-target="#addMenuItemsModal" />
		
	<input type="button" value="Add Choices Wizard" class="btn btn-info"
		id='addChoicesModalId' data-toggle="modal"
		data-target="#addChoicesModal" />
		
	<input type="button" value="Add Choice Values Wizard" class="btn btn-info"
		id='addChoiceValuesModalId' data-toggle="modal"
		data-target="#addChoiceValuesModal" />
	<#include "AddMenuItemsModalWizard.ftl" >
	<#include "AddChoicesModalWizard.ftl" >
	<#include "AddChoiceValuesModalWizard.ftl" >
</div>