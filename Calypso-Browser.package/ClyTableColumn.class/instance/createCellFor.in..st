cells creation
createCellFor: aDataSourceItem in: aQueryView

	| cell |
	cell := ClyItemCellMorph new.
	displayBlock value: cell value: aDataSourceItem.
	aQueryView decorateTableCell: cell of: aDataSourceItem.
	cell build.
	^cell