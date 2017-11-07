queries
rebuildInTransformedScopeBy: aBlockWithScopeArg

	| newQuery |
	newQuery := buildingQuery withScopeTransformedBy: aBlockWithScopeArg.
	
	^environment query: newQuery