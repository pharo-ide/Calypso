tests
testNotReadyByDefault

	queryResult := ClyAsyncQueryResult on: ClyRawQueryResult new.
	
	self deny: queryResult isReady