query
query: anEnvironmentContentClass inScope: anEnvironmentScopeClass

	self isEmpty ifTrue: [
		"to avoid extra communication in remote scenario in trivial case
		we just return local empty content" 
		^(anEnvironmentContentClass emptyInScopeOf: anEnvironmentScopeClass) newCursor].

	^self lastSelectedItem ownerDataSource
			query: anEnvironmentContentClass 
			inNewScope: (self asItemsScope: anEnvironmentScopeClass)