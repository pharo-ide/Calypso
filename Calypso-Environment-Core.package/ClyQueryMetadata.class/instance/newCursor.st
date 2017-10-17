operations
newCursor
	self isBuiltInEmptyScope ifTrue: [ 
		"to avoid extra communication in remote scenario in trivial case
		we just return local empty content" 
		^ (self contentClass emptyInScopeOf: queryScopeClass) newCursor ].
	
	^queryScope query: buildingQuery