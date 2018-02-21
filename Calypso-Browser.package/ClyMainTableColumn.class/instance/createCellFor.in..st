cells creation
createCellFor: aDataSourceItem in: aQueryView

	| cell |
	cell := ClyMainItemCellMorph on: aDataSourceItem.
	displayBlock value: cell value: aDataSourceItem.
	aQueryView decorateMainTableCell: cell of: aDataSourceItem.
	cell build.
	^cell