testing
belongsToRemovedBrowserContext
	| actualMethod |
	actualMethod := editingMethod origin 
		localMethodNamed: editingMethod selector ifAbsent: [^true].
		
	self editingMethod: actualMethod.
	^false