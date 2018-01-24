accessing
rawItems
	^buildingQuery retrievesBrowserItems 
		ifTrue: [ items collect: [ :each | each actualObject ] ]
		ifFalse: [ items]