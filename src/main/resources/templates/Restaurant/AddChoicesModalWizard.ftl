<div id="addChoicesModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title">Add Choices Wizard</h4>
				</div>
				<div class="modal-body" id='addChoicesModalBody'>
					<input type='hidden' value='' id='selectedItemNumHidden' />
					<div class="form-group">
  						<label id='selectItemLabel'>Select An Item To Add Choices :</label>
					 	<select class="form-control" id="itemSelected">
						   	<#list MenuItems as item>
						   		<#if item.itemName??><option value=${item.itemNum}>${item.itemName}</option></#if>
							</#list>
					  	</select>
					</div>
					<label id='addChoicesLabel'><h4>Enter the Number Of Choices You Wish to Add:</h4></label>
					<input type="text" name='noOfChoicesToAdd' id='noOfChoicesToAdd' /> 
					<input type="button" class='btn btn-info' id='addGivenNoOfChoices' value='Generate Add Choices Form' onClick='generateAddChoiceForm();' />
					
					<div class="table-responsive">
						<table class="table table-striped table-hover table-responsive" id="addGeneratedChoicesTable">
							<thead>
								<tr>
									<th>Item Name</th>
									<th>Choice Title</th>
									<th>Choice Type</th>
									<th>Is Required</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					<input type="button" class='btn btn-info' id='saveAddedChoices' value='Save Added Choices' onClick='saveAddedMenuChoices(${sessionUserId});' disabled=true />
				</div>
				<div class="modal-footer">
					<button type="button" id='addChoicesModalCloseBtn' class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>