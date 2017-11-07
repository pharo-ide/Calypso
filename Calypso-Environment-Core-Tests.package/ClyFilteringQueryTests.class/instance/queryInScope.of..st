tests
queryInScope: aScopeClass of: basisObjects
	
	| mainQuery |
	mainQuery := ClyQueryExampleReturningScopeBasis from: (aScopeClass of: basisObjects).
	query originalQuery: mainQuery.
	
	result := environment query: query.
	
	resultItems := result items