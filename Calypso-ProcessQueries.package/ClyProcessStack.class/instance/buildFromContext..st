building
buildFromContext: aContext
	
	| sender |
	sender := aContext.
	[ sender notNil ] whileTrue: [ 
		items add: sender asCalypsoBrowserItem.
		sender := sender sender
	 ] 