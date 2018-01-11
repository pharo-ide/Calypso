tests
testPrepareResultForExecutionWhenItIsSemiAsync

	| preparedResult |
	preparedResult := query semiAsync prepareNewResult.
	
	self assert: preparedResult class equals: ClySemiAsyncQueryResult.
	self assert: preparedResult buildingQuery == query actualQuery.
	self assert: preparedResult environment == environment.
	self assert: preparedResult isProtected