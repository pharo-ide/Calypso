cells creation
createCellFor: aDataSourceItem in: itemsView

	| cell |
	cell := ClyMainItemCellMorph on: aDataSourceItem.
	displayBlock value: cell value: aDataSourceItem.
	itemsView decorateTableCell: cell of: aDataSourceItem.
	cell build.
	^cell