testing
wantsStayInDifferentContext
	self isBuilt ifFalse: [ ^false ].
	self hasUnacceptedEdits ifTrue: [ ^true ].
	self belongsToRemovedBrowserContext ifTrue: [ ^false ].
	^isManagedByUser