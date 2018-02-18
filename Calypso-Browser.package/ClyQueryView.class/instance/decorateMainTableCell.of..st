decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := contextClass of: {aDataSourceItem} for: self.
	
	ClyTableDecorationStrategy activeInstancesInContext: context do: [ :strategy | 
		strategy decorateMainTableCell: anItemCellMorph inContext: context]