tests
testComparisonOfSameQueriesWithDifferentRequestedContent

	| query2 |
	query requestedContent: #contentClass1.
	query2 := self createQuery.
	query2 requestedContent: #contentClass2.
		
	self deny: query = query2