context menu
menuColumn: column row: rowIndex
	| selection |
	
	selection := self grabSelectionAt: rowIndex.
	
	^itemsView buildContextMenuFor: selection