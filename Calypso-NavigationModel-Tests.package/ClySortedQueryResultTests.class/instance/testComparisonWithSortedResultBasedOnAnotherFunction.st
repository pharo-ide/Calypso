tests
testComparisonWithSortedResultBasedOnAnotherFunction

	| queryResult2 |
	queryResult2 := ClySortedQueryResult using: #someAspect ascending.
	
	self deny: (queryResult = queryResult2)