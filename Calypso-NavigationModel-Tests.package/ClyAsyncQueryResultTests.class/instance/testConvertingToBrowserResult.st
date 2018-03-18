tests
testConvertingToBrowserResult

	| converted |
	converted := queryResult adoptedForBrowser.
	self assert: converted class equals: ClyAsyncQueryResultBrowserAdapter.
	self assert: converted rawResult equals: queryResult