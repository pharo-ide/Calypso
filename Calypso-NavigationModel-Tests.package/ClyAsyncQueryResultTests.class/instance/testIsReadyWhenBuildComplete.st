tests
testIsReadyWhenBuildComplete

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: queryResult isReady