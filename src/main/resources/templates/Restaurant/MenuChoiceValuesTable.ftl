<div class="form-group">
				<h2>Choice Values Table</h2>
				<div class="table-responsive">
					<table class="table table-striped table-hover table-responsive"
						id="choiceValuesTable">
						<thead>
							<tr>
								<th>Choice Title</th>
								<th>Choice Type</th>
								<th>Value Name</th>
								<th>Value Price</th>
								<th>Is Extra ?</th>
							</tr>
						</thead>
						<tbody>
							<#list MenuItems as item> 
								<#list item.choices as choice> 
									<#list choice.chValues as choiceValue>
										<tr id='ChoiceValueRow-restId-chNum-valueName-${item.restId}-${choice.chNum}-${choiceValue.valueId}'>
											<#if choice.chTitle??> <td id='chTitle-${item.restId}-${choice.chNum}-${choiceValue.valueId}'>${choice.chTitle}</td></#if>
											<#if choice.chType??> <td id='chTitle-${item.restId}-${choice.chNum}-${choiceValue.valueId}'>${choice.chType}</td></#if>
											<#if choiceValue.valueName??><td id = 'valueName-${item.restId}-${choice.chNum}-${choiceValue.valueId}' >${choiceValue.valueName}</td></#if>
											<#if choiceValue.valuePrice??><td id='valuePrice-${item.restId}-${choice.chNum}-${choiceValue.valueId}'>${choiceValue.valuePrice}</td></#if>
											<#if choiceValue.extra??><td id='extra-${item.restId}-${choice.chNum}-${choiceValue.valueId}'><input type="checkbox" /></td></#if>
										</tr>
									</#list> 
								</#list> 
							</#list>
						</tbody>
					</table>
				</div>
			</div>
			<input type="button" value="Update All Choice Values"
				class="btn btn-info" id='updateAllChoiceValues' disabled=true
				onClick=updateChoiceValues(); />
	</div>