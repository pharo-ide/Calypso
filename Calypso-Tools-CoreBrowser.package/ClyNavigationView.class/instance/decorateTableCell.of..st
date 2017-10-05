controlling
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := browser createContextOfSingleItem: aDataSourceItem.
	
	ClyTableDecorationStrategy activeInstancesInContext: context do: [ :strategy | 
		strategy decorateTableCell: anItemCellMorph inContext: context]