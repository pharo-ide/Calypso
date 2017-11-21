requests
requestSingleObject: dialogTitle from: aQuery inScope: aScope
	
	self 
		openOn: aQuery 
		inScope: aScope 
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter first].
	
			^itemsView selection lastSelectedItem actualObject]