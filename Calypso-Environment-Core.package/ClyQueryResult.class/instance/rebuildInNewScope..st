queries
rebuildInNewScope: aScope

	| newQuery |
	newQuery := buildingQuery withScope: aScope.
	
	^environment query: newQuery