drag and drop
dropElements: aPassenger index: rowIndex
	| dropTargetItem |
	dropTargetItem := self elementAt: rowIndex.
	
	^queryView dropPassenger: aPassenger at: dropTargetItem