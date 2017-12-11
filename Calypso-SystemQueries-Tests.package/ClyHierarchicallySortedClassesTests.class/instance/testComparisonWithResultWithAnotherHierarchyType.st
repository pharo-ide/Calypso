tests
testComparisonWithResultWithAnotherHierarchyType

	| queryResult2 |
	queryResult2 := self createQueryResult.
	queryResult2 hierarchy: #anotherHierarchy.
	
	self deny: queryResult = queryResult2