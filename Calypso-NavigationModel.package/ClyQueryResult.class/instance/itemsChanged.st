system changes
itemsChanged

	accessGuard critical: [ 	
		items := nil].
	
	announcer ifNil: [ ^self ].	
	environment announceChangesOf: self