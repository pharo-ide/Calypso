testing
wantsStayInDifferentContext
	self isBuilt ifFalse: [ ^false ].
	self hasUnacceptedEdits ifTrue: [ ^true ].
	self isTabSelected & self isExtraSelectionRequested ifTrue: [ ^true ].
	self belongsToRemovedBrowserContext ifTrue: [ ^false ].
	^isManagedByUser