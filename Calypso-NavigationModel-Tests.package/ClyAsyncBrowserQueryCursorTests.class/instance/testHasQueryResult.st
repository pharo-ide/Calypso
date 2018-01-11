tests
testHasQueryResult

	self assert: cursor queryResult class equals: ClyAsyncBrowserQueryResultAdapter.
	self assert: cursor queryResult actualResult equals: queryResult