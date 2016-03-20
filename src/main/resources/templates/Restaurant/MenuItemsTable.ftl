		<div class="form-group">
				<h2>Items Table</h2>
				<div class="table-responsive">
					<table class="table table-striped table-hover table-responsive"
						id="itemsTable">
						<thead>
							<tr>
								<th>Section Name</th>
								<th>Item Name</th>
								<th>Description</th>
								<th>BasePrice</th>
								<!-- <th>Choices</th> -->
							</tr>
						</thead>
						<tbody>
							<#list MenuItems as item>
							<tr id='menuItemRow-restId-itemID-${item.restId}-${item.itemNum}'
								class="menuItemRow-restId-itemID">
								<#if item.secName??>
								<td id='secName-${item.restId}-${item.itemNum}'>${item.secName}</td><#else>
								<td id='secName-${item.restId}-${item.itemNum}'></td></#if> <#if
								item.itemName??>
								<td id='itemName-${item.restId}-${item.itemNum}'>${item.itemName}</td><#else>
								<td id='itemName-${item.restId}-${item.itemNum}'></td></#if>
								<#if item.description??>
								<td id='description-${item.restId}-${item.itemNum}'>${item.description}</td><#else>
								<td id='description-${item.restId}-${item.itemNum}'></td></#if>
								<#if item.basePrice??>
								<td id='basePrice-${item.restId}-${item.itemNum}'>${item.basePrice}</td><#else>
								<td id='basePrice-${item.restId}-${item.itemNum}'></td></#if>
							</tr>
							</#list>
						</tbody>

					</table>
					<input type="button" value="Update All Items" class="btn btn-info"
						id='updateAllItems' disabled=true onClick=updateAllMenuItems(); />
				</div>