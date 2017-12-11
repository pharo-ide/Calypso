tests
testIsBuiltWhenBuildComplete

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: queryResult isBuilt