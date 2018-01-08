tests
testPrepareResultForExecution

	| preparedResult |
	preparedResult := query prepareNewResult.
	
	self assert: preparedResult class equals: ClyAsyncQueryResult.
	self assert: preparedResult buildingQuery == query actualQuery.
	self assert: preparedResult environment == environment.
	self assert: preparedResult isProtected.