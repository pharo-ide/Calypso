accessing
cellColumn: column row: rowIndex

	| item |
	item := self elementAt: rowIndex.
	^column createCellFor: item in: itemsView 