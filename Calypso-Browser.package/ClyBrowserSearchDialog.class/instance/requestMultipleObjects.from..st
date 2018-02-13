requests
requestMultipleObjects: dialogTitle from: aQuery
	
	self 
		openOn: aQuery 
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter ].
			^itemsView selection actualObjects]