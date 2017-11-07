queries
rebuildInScopeWith: basisObject

	| newQuery |
	newQuery := buildingQuery withScopeWith: basisObject.
	
	^environment query: newQuery