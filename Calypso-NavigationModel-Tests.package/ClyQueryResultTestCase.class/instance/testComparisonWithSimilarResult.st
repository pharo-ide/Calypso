tests
testComparisonWithSimilarResult

	| queryResult2 |
	queryResult := self createQueryResult.
	queryResult2 := self createQueryResult.
	
	self assert: queryResult equals: queryResult2.
	self assert: queryResult hash equals: queryResult2 hash