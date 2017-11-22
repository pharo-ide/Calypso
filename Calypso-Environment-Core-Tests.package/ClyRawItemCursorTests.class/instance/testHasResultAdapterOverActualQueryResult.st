tests
testHasResultAdapterOverActualQueryResult

	self assert: cursor queryResult class equals: ClyQueryResultBrowserAdapter.
	self assert: cursor queryResult actualResult equals: queryResult