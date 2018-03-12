tests
testConvertingToBrowserResult

	| converted |
	converted := queryResult adoptedForBrowser.
	self assert: converted class equals: ClyQueryResultBrowserAdapter.
	self assert: converted rawResult equals: queryResult