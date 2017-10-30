tests
testExecutionOverExistingQueryResult

	query := ClySimpleQueryExampleReturningScopeBasis new.

	self queryInScope: ClyEnvironmentScope of: { self class superclass. self class }.
	result := result filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := result items.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class