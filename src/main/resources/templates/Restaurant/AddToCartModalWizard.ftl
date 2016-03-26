<div class ="container" >
	<div id="addToCartModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Add Items to Cart Wizard</h4>
					</div>
					<div class="modal-body" id='addToCartModalBody'>
						<form>
							<label id='addToCartQuantityLabel'><h4>Enter Quantity</h4></label>
							<input type="text" class="form-control" name='addToCartQuantity' id='addToCartQuantity' placeholder="Enter number of Items"/>
							<table class="table table-responsive" id='showChoiceOptionsTab' >
								<thead>
								</thead>
								<tbody>
								</tbody>
							</table>
							
							<label for="comment">Special Instructions:</label>
							<textarea class="form-control" rows="5" id="specialInstructions"></textarea>
							
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-info">Add To Cart</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>