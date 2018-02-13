tests
testConvertingToSemiAsyncQuery

	| convertedQuery |
	convertedQuery := query semiAsync.
	
	self assert: convertedQuery == query