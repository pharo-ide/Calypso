running
queryInScope: scopeClass of: basisObjects

	| scope |
	scope := scopeClass of: basisObjects.	
	
	result := environment query: query inScope: scope.
	
	resultItems := result items