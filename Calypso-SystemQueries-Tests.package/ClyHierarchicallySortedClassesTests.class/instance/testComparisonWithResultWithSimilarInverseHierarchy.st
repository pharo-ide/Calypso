tests
testComparisonWithResultWithSimilarInverseHierarchy

	| queryResult2 |
	queryResult2 := self createQueryResult.
	queryResult2 := queryResult2 withInverseHierarchy.
	
	self deny: queryResult = queryResult2