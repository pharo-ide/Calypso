tests
testPrepareResultForExecution

	| preparedResult |
	preparedResult := query prepareResultIn: environment.
	
	self assert: preparedResult class equals: query requiredResult class.
	self assert: preparedResult buildingQuery == query.
	self assert: preparedResult environment == environment.