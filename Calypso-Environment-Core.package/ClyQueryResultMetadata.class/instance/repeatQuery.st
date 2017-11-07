operations
repeatQuery
	self isBuiltInEmptyScope ifTrue: [ 
		"to avoid extra communication in remote scenario in trivial case
		we just return local empty content" 
		^ClyUnknownQueryResult emptyOf: buildingQuery].
	
	^environment query: buildingQuery