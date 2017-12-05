tests
testComparisonToAnotherAsyncResultOverDifferentActualQuery

	| result2 query2 |
	queryResult := self createQueryResult.
	
	query2 := ClyQueryExampleReturningScopeBasis from: query scope.
	result2 := self createQueryResult.
	result2 actualQuery: query2.
	
	self deny: queryResult = result2