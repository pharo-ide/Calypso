tests
testConvertingToAsyncQuery

	| convertedQuery |
	convertedQuery := query async.
	
	self assert: convertedQuery == query