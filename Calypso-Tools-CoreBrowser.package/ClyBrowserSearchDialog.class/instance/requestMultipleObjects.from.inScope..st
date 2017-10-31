requests
requestMultipleObjects: dialogTitle from: anEnvironmentQuery inScope: anEnvironmentScope
	
	self 
		openOn: anEnvironmentQuery 
		inScope: anEnvironmentScope 
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter ].
			^itemsView selection rawItems]