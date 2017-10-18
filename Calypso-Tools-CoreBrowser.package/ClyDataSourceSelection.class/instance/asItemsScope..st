converting
asItemsScope: anEnvironmentScopeClass
	| actualItems |
	actualItems := self uniformActualObjects.
	
	^anEnvironmentScopeClass of: actualItems