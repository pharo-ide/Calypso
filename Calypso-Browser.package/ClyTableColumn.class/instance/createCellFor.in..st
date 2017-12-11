cells creation
createCellFor: aDataSourceItem in: itemsView

	| cell |
	cell := ClyItemCellMorph new.
	displayBlock value: cell value: aDataSourceItem.
	itemsView decorateTableCell: cell of: aDataSourceItem.
	cell build.
	^cell