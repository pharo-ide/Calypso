controlling
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := ClyContextSelectionStrategy selectContextOfSingleItem: aDataSourceItem for: browser.
	
	ClyTableDecorationStrategy activeInstancesInContext: context do: [ :strategy | 
		strategy decorateMainTableCell: anItemCellMorph inContext: context]