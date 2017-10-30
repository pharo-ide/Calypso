running
queryInScope: scopeClass of: basisObjects

	| resultCursor scope |
	scope := environment selectScope: scopeClass of: basisObjects.
	
	result := scope query: query.
	resultItems := result items