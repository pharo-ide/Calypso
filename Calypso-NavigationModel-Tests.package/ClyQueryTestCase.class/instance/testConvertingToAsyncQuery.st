tests
testConvertingToAsyncQuery

	| convertedQuery |
	convertedQuery := query async.
	
	self assert: convertedQuery class equals: ClyAsyncQuery.
	self assert: convertedQuery subqueries equals: {query withResult: query requiredResult asAsyncResult} asSet.
	self assert: convertedQuery requiredResult equals: (ClyAsyncQueryResult on: query requiredResult) 