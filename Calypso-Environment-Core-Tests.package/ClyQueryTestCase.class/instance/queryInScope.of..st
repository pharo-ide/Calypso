running
queryInScope: scopeClass of: basisObjects

	| scope |
	scope := environment selectScope: scopeClass of: basisObjects.
	
	result := scope query: query.
	resultItems := result items