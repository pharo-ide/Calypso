cells creation
createCellFor: aDataSourceItem in: itemsView

	| cell |
	cell := FTCellMorph new.
	displayBlock value: cell value: aDataSourceItem.
	^cell