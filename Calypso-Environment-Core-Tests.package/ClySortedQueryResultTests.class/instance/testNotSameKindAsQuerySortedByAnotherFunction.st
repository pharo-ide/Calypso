tests
testNotSameKindAsQuerySortedByAnotherFunction

	| queryResult2 |
	queryResult2 := ClySortedQueryResult using: #someAspect ascending.
	
	self deny: (queryResult isSameKindAs: queryResult2)