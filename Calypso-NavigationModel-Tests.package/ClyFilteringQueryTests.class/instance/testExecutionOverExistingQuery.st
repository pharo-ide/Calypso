tests
testExecutionOverExistingQuery

	| scope mainQuery |
	scope := ClyScopeExample of: { self class superclass. self class } in: environment.
	mainQuery := ClyQueryExampleReturningScopeBasis from: scope.
	query := mainQuery filteredBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	result := query execute.
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class