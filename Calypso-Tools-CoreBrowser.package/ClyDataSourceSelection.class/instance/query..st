query
query: anEnvironmentContentClass	
	| actualItems |
	self isEmpty ifTrue: [^(anEnvironmentContentClass emptyInScopeOf: self itemScope) newCursor].
	
	^self lastSelectedItem ownerDataSource
			query: anEnvironmentContentClass inNewScope: self asItemsScope