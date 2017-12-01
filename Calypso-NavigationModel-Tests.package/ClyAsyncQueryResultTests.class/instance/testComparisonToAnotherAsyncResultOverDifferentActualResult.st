tests
testComparisonToAnotherAsyncResultOverDifferentActualResult

	| result2 |
	queryResult := self createQueryResult.
	result2 := self createQueryResult.
	result2 actualResult: #anotherResult.
	
	self deny: queryResult = result2