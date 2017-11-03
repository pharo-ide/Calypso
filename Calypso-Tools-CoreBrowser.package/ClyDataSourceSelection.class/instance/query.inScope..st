query
query: aQuery inScope: anEnvironmentScopeClass

	self isEmpty ifTrue: [
		"to avoid extra communication in remote scenario in trivial case
		we just return local empty content" 
		^ClyUnknownQueryResult inEmptyScope: anEnvironmentScopeClass].

	^self lastSelectedItem ownerDataSource
			query: aQuery
			inNewScope: (self asItemsScope: anEnvironmentScopeClass)