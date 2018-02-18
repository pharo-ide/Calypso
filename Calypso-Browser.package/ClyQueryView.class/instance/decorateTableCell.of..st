decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := contextClass of: {aDataSourceItem} for: self.
	
	ClyTableDecorationStrategy activeInstancesInContext: context do: [ :strategy | 
		strategy decorateTableCell: anItemCellMorph inContext: context]