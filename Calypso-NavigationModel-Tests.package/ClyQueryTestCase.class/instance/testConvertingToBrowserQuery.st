tests
testConvertingToBrowserQuery

	| convertedQuery |
	convertedQuery := query adoptedForBrowser.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult class == ClyQueryResultBrowserAdapter.
	self assert: convertedQuery requiredResult rawResult == query requiredResult.
	self assert: convertedQuery scope == query scope.
	self assert: convertedQuery scope == query scope.