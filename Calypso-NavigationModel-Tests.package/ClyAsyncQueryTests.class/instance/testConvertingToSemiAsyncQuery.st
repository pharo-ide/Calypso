tests
testConvertingToSemiAsyncQuery

	| convertedQuery |
	convertedQuery := query semiAsync.
	
	self assert: convertedQuery asyncResult class equals: ClySemiAsyncQueryResult.
	self deny: convertedQuery == query.
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: convertedQuery scope == query scope