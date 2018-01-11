tests
testConvertingToAsyncQuery

	| convertedQuery |
	convertedQuery := query async.
	
	self assert: convertedQuery class equals: ClyAsyncQuery.
	self assert: convertedQuery actualQuery == query.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: convertedQuery scope == query scope.
	self assert: convertedQuery asyncResult class equals: ClyAsyncQueryResult