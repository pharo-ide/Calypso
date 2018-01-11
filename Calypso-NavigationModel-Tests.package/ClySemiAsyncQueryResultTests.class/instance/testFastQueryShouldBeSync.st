tests
testFastQueryShouldBeSync

	query passExecution.
	queryResult rebuild.
	
	self assert: queryResult isBuilt.
	self assert: queryResult buildProcess isNil