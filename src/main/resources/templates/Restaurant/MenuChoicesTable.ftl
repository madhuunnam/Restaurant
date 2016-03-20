<div class="form-group">
	<h2>Choices Table</h2>
	<div class="table-responsive">
		<table class="table table-striped table-hover table-responsive"
			id="choicesTable">
			<thead>
				<tr>
					<th>Item Name</th>
					<th>Choice Title</th>
					<th>Choice Type</th>
					<th>Is Required</th>
				</tr>
			</thead>
			<tbody>
				<#list MenuItems as item> 
					<#list item.choices as choice>
						<tr id='ChoiceRow-restId-itemID-ChoiceNum-${item.restId}-${item.itemNum}-${choice.chNum}'>
							<#if item.itemName??><td id='itemName-${item.restId}-${item.itemNum}-${choice.chNum}'>${item.itemName}</td></#if>
							<#if choice.chTitle??><td id='chTitle-${item.restId}-${item.itemNum}-${choice.chNum}'>${choice.chTitle}</td></#if>
							<#if choice.chType??><td id='chType-${item.restId}-${item.itemNum}-${choice.chNum}'>${choice.chType}</td></#if>
							<#if choice.required??><td id='required-${item.restId}-${item.itemNum}-${choice.chNum}'><input type="checkbox" /></td></#if>
						</tr>
					</#list>
				</#list>
			</tbody>
		</table>
	</div>
	<input type="button" value="Update All Choices" class="btn btn-info" id='updateAllChoices' disabled=true onClick=udpateChoices(); />
</div>

