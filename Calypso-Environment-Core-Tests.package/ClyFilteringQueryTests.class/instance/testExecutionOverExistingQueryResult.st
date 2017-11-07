tests
testExecutionOverExistingQueryResult

	| originalResult |
	query := ClyQueryExampleReturningScopeBasis new.

	originalResult := environment 
		query: query inScope: (ClyScopeExample of: { self class superclass. self class }).
	result := originalResult filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class