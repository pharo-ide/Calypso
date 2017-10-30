operations
repeatQuery
	self isBuiltInEmptyScope ifTrue: [ 
		"to avoid extra communication in remote scenario in trivial case
		we just return local empty content" 
		^ self contentClass emptyInScopeOf: queryScopeClass].
	
	^queryScope query: buildingQuery