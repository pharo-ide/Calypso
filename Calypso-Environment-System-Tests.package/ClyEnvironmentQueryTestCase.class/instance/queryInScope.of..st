tests
queryInScope: scopeClass of: basisObjects

	| resultCursor scope |
	scope := environment selectScope: scopeClass of: basisObjects.
	
	resultCursor := scope query: query.
	result := resultCursor observedContent.
	resultItems := result items