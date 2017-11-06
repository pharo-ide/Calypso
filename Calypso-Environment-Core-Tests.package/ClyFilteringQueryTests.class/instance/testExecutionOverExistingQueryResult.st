tests
testExecutionOverExistingQueryResult

	| originalResult |
	query := ClySimpleQueryExampleReturningScopeBasis new.

	originalResult := environment 
		query: query inScope: (ClyScope of: { self class superclass. self class }).
	result := originalResult filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class