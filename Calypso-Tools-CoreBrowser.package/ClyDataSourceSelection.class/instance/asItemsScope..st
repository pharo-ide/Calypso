converting
asItemsScope: anEnvironmentScopeClass
	| actualItems |
	actualItems := self uniformRawItems.
	
	^anEnvironmentScopeClass of: actualItems