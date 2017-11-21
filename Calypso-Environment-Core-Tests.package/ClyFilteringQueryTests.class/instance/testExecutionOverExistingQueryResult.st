tests
testExecutionOverExistingQueryResult

	| originalResult scope mainQuery |
	scope := ClyScopeExample of: { self class superclass. self class } in: environment.
	mainQuery := ClyQueryExampleReturningScopeBasis from: scope.
	originalResult := mainQuery execute.
	result := originalResult filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class