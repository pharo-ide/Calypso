drag and drop
wantsDropElements: aPassanger type: type index: rowIndex
	| dropTargetItem result |
	rowIndex = 0 | (rowIndex > self numberOfRows) ifTrue: [ ^false ].
	self dragTransferType == type ifFalse: [ ^false ].
	dropTargetItem := self elementAt: rowIndex.		
	result := itemsView wantsDropPassenger: aPassanger at: dropTargetItem.
	
	result & dropTargetItem hasChildren ifTrue: [ dropTargetItem expand ].
	
	^result