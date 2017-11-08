tests
testExecutionOverExistingQueryResult

	| originalResult scope mainQuery |
	scope := ClyScopeExample of: { self class superclass. self class }.
	mainQuery := ClyQueryExampleReturningScopeBasis from: scope.
	originalResult := environment query: mainQuery.
	result := originalResult filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class