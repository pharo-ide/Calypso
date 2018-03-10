tests
testHasResultAdapterOverActualQueryResult

	self assert: cursor queryResult class equals: ClyQueryResultBrowserAdapterOld.
	self assert: cursor queryResult actualResult equals: queryResult