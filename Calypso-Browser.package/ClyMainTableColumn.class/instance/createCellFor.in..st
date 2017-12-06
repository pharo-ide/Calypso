cells creation
createCellFor: aDataSourceItem in: itemsView

	| cell |
	cell := ClyMainItemCellMorph on: aDataSourceItem.
	displayBlock value: cell value: aDataSourceItem.
	itemsView decorateMainTableCell: cell of: aDataSourceItem.
	cell build.
	^cell