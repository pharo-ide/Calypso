tests
testComparisonWithAnotherHierarchy

	| queryResult2 |
	queryResult2 := self createQueryResult. 
	queryResult2 hierarchy: queryResult hierarchy inverted.
	
	self deny: queryResult = queryResult2