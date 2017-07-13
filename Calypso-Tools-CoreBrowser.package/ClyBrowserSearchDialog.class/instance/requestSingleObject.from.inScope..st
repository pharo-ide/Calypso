requests
requestSingleObject: dialogTitle from: anEnvironmentQuery inScope: anEnvironmentScope
	
	self openOn: anEnvironmentQuery inScope: anEnvironmentScope withTitle: dialogTitle.
	
	itemsView selection isEmpty ifTrue: [ ^self findObjectsSameAsFilter first].
	
	^itemsView selection lastSelectedItem actualObject