tests
testComparisonWithResultWithSameHierarchyAbdSortFunction

	| queryResult2 |
	queryResult2 := queryResult sortedBy: queryResult hierarchy sortFunction.
	
	self assert: queryResult = queryResult2.
	self assert: queryResult hash = queryResult2 hash.