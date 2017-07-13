controlling
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| context |
	context := browser createContextOfSingleItem: aDataSourceItem.
	
	ClyTableDecorator allDecoratorsFor: context do: [ :each | 
		each decorateTableCell: anItemCellMorph inContext: context]