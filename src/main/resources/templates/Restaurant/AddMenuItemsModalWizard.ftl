	<div id="addMenuItemsModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">

						<h4 class="modal-title">Add Menu Items Wizard</h4>
					</div>
					<div class="modal-body" id='addMenuItemsModalBody'>
						<label id='addItemsLabel'><h4>Enter the Number Of
								Items You Wish to Add:</h4></label> 
						<input type="text" name='noOfItemsToAdd' id='noOfItemsToAdd' /> 
						<input type="button" class='btn btn-info'
							id='addGivenNoOfMenuItems' value='Generate Add Menu Item Form'
							onClick=generateAddMenuForm(); />
							
						<div class="table-responsive">
							<table class="table table-striped table-hover table-responsive" id="addGeneratedMenuItemsTable">
								<thead>
									<tr>
										<th>Section Name</th>
										<th>Item Name</th>
										<th>Description</th>
										<th>BasePrice</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>	
						</div>
						<input type="button" class='btn btn-info'
							id='saveAddedItems' value='Save Added Items' onClick='saveAddedMenuItems(${sessionUserId});'
							disabled=true />
					</div>
					<div class="modal-footer">
						<button type="button" id='menuItemsModalCloseBtn' class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>