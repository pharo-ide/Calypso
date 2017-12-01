system changes
notifyObservers

	announcer ifNil: [ ^self ].	
	environment announceChangesOf: self