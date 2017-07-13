drag and drop
dropElements: aPassenger index: rowIndex
	| dropTargetItem |
	dropTargetItem := self elementAt: rowIndex.
	
	^itemsView dropPassenger: aPassenger at: dropTargetItem