tests
testExecutionOverExistingQuery
	| scope mainQuery |
	scope := ClyScopeExample ofAll: {self class superclass. self class} in: environment.
	mainQuery := ClyQueryExampleReturningScopeBasis from: scope.
	query := mainQuery filteredBy: query itemFilter.
	
	result := query execute.
	resultItems := result items.
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class