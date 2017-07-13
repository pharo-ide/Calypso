query
query: anEnvironmentContentClass inScope: anEnvironmentScopeClass
	| actualItems |
	self isEmpty ifTrue: [^(anEnvironmentContentClass emptyInScopeOf: self itemScope) newCursor].

	actualItems := self uniformActualObjects.
	
	^self lastSelectedItem ownerDataSource
			query: anEnvironmentContentClass 
			inNewScope: (anEnvironmentScopeClass basis: actualItems)