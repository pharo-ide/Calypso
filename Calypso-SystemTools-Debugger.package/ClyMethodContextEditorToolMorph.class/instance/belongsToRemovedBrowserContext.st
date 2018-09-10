testing
belongsToRemovedBrowserContext
	super belongsToRemovedBrowserContext ifTrue: [ ^true ].
	self flag: #todo.
	^methodContext sender isNil "it should be improved by analyzing editing process contexts"