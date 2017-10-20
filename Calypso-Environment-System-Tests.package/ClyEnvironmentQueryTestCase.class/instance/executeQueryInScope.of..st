running
executeQueryInScope: scopeClass of: basisObjects

	| scope cursor |
	scope := environment selectScope: scopeClass of: basisObjects.
	
	cursor := scope query: query.
	result := cursor observedContent.
	
	^cursor retrieveAllActualObjects