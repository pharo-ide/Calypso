requests
requestMultipleObjects: dialogTitle from: aQuery inScope: anEnvironmentScope
	
	self 
		openOn: aQuery 
		inScope: anEnvironmentScope 
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter ].
			^itemsView selection actualObjects]