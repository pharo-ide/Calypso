tests
testConvertingToAsyncQuery

	| convertedQuery |
	convertedQuery := query async.
	
	self assert: convertedQuery requiredResult equals: (ClyAsyncQueryResult on: query requiredResult) 