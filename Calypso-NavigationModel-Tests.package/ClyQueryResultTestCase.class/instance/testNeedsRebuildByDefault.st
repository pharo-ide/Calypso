tests
testNeedsRebuildByDefault
	
	queryResult := self createQueryResult.
	
	self assert: queryResult needsRebuild 