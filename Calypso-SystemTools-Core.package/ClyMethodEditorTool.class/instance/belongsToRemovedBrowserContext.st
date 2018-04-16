testing
belongsToRemovedBrowserContext
	super belongsToRemovedBrowserContext ifTrue: [ ^true ].
	
	^self methodClass isObsolete