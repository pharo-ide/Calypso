tests
testConvertingToBrowserQuery

	| convertedQuery convertedResult |
	convertedQuery := query adoptedForBrowser.
	convertedResult := convertedQuery asyncResult.
	
	self assert: convertedQuery class equals: ClyAsyncQuery.
	self assert: convertedQuery requiredResult equals: query requiredResult.
	self assert: convertedResult class equals: ClyAsyncQueryResultBrowserAdapter.
	self assert: convertedResult rawResult equals: query asyncResult