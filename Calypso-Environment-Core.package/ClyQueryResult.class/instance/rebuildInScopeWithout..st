queries
rebuildInScopeWithout: basisObject

	| newQuery |
	newQuery := buildingQuery withScopeWithout: basisObject.
	
	^environment query: newQuery