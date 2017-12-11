tests
testPrepareResultForExecution

	| preparedResult |
	preparedResult := query prepareResultIn: environment.
	
	self assert: preparedResult class equals: ClyAsyncQueryResult.
	self assert: preparedResult buildingQuery == query actualQuery.
	self assert: preparedResult environment == environment.