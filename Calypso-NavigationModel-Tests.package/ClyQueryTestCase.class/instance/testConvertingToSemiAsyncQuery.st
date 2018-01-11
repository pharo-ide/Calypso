tests
testConvertingToSemiAsyncQuery

	| convertedQuery |
	convertedQuery := query semiAsync.
	
	self assert: convertedQuery class equals: ClyAsyncQuery.
	self assert: convertedQuery actualQuery == query.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: convertedQuery scope == query scope.
	self assert: convertedQuery asyncResult class equals: ClySemiAsyncQueryResult