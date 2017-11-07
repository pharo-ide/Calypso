queries
rebuildInScopeOf: newBasisObjects

	| newQuery |
	newQuery := buildingQuery withScopeOf: newBasisObjects.
	
	^environment query: newQuery