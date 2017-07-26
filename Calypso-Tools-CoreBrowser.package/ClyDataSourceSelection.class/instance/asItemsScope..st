converting
asItemsScope: anEnvironmentScopeClass
	| actualItems |
	actualItems := self uniformActualObjects.
	
	^anEnvironmentScopeClass basis: actualItems