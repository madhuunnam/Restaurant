<div id="addChoiceValuesModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">

					<h4 class="modal-title">Add Choice Values Wizard</h4>
				</div>
				<div class="modal-body" id='addChoiceValuesModalBody'>
					<input type='hidden' value='' id='selectedChNumHidden' />
					<div class="form-group">
  						<label id='selectChoiceLabel'>Select A Choice To Add Choice Values :</label>
					 	<select class="form-control" id="choiceSelected">
						   	<#list MenuItems as item>
						   		<#list item.choices as choice>
						   			<#if choice.chTitle??><option value=${choice.chNum}>${choice.chTitle}</option></#if>
								</#list>
							</#list>
					  	</select>
					</div>
					<label id='addChoiceValuesLabel'><h4>Enter the Number Of Choice Values You Wish to Add:</h4></label>
					<input type="text" name='noOfChoiceValuesToAdd' id='noOfChoiceValuesToAdd' /> 
					<input type="button" class='btn btn-info' id='addGivenNoOfChoiceValues' value='Generate Add Choice Values Form' onClick='generateAddChoiceValuesForm();' />
					
					<div class="table-responsive">
						<table class="table table-striped table-hover table-responsive" id="addGeneratedChoiceValuesTable">
							<thead>
								<tr>
									<th>Choice Title</th>
									<th>Value Name</th>
									<th>Value Price</th>
									<th>Is Extra</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					<input type="button" class='btn btn-info' id='saveAddedChoiceValues' value='Save Added ChoiceValues' onClick='saveAddedChoiceValuess(${sessionUserId});' disabled=true />
				</div>
				<div class="modal-footer">
					<button type="button" id='addChValuesModalCloseBtn' class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>