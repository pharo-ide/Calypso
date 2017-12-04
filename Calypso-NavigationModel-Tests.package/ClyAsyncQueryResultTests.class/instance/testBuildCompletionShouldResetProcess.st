tests
testBuildCompletionShouldResetProcess

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: queryResult buildProcess isNil