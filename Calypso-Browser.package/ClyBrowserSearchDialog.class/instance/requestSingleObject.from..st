requests
requestSingleObject: dialogTitle from: aQuery
	
	self 
		openOn: aQuery
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter first].
	
			^itemsView selection lastSelectedItem actualObject]