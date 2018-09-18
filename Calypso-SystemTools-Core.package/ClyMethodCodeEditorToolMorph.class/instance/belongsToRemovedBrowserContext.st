testing
belongsToRemovedBrowserContext
	| actualMethod |
	super belongsToRemovedBrowserContext ifTrue: [ ^true ].
	
	actualMethod := editingMethod origin 
		localMethodNamed: editingMethod selector ifAbsent: [^true].
		
	self editingMethod: actualMethod.
	^false