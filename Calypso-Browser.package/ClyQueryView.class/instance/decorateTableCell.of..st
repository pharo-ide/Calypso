controlling
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := ClyContextSelectionStrategy selectContextOfSingleItem: aDataSourceItem for: browser.
	
	ClyTableDecorationStrategy activeInstancesInContext: context do: [ :strategy | 
		strategy decorateTableCell: anItemCellMorph inContext: context]