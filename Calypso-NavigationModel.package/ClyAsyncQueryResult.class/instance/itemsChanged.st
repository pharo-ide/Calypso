system changes
itemsChanged

	actualResult itemsChanged.
	
	announcer ifNil: [ ^self ].	
	environment announceChangesOf: self