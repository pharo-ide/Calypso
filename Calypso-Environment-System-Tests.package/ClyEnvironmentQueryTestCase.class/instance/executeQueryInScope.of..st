tests
executeQueryInScope: scopeClass of: basisObjects

	| scope cursor |
	scope := environment selectScope: scopeClass of: basisObjects.
	
	cursor := scope query: query.
	resultContent := cursor observedContent.
	
	^cursor retrieveAllActualObjects