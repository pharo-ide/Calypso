tests
testNotBuiltByDefault

	queryResult := ClyAsyncQueryResult for: query.
	
	self deny: queryResult isBuilt