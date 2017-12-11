tests
testComparisonWithResultWithAnotherSortFunction

	| queryResult2 |
	queryResult2 := queryResult sortedBy: #anotherSortFunction.
	
	self deny: queryResult = queryResult2.
	self deny: queryResult == queryResult2