tests
testNotNeedsRebuildByDefault
	
	queryResult := self createQueryResult.
	
	self deny: queryResult needsRebuild 