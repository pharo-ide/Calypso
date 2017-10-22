tests
testExecutionOverExistingQueryResult

	| resultCursor |
	query := ClyScopeBasisQueryStub new.

	self queryInScope: ClyEnvironmentScope of: { self class superclass. self class }.
	resultCursor := result filterItemsBy: (ClyItemNameFilter substringPattern: 'FilteringQueryTests').
	resultItems := resultCursor retrieveAll.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class