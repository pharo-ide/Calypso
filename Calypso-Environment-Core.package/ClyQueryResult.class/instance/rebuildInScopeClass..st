queries
rebuildInScopeClass: anEnvironmentScopeClass

	| newQuery |
	newQuery := buildingQuery withScopeClass: anEnvironmentScopeClass.
	
	^environment query: newQuery