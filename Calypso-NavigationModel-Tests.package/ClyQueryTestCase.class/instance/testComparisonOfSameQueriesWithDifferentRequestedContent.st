tests
testComparisonOfSameQueriesWithDifferentRequestedContent

	| query2 |
	query requiredResult: #contentClass1.
	query2 := self createQuery.
	query2 requiredResult: #contentClass2.
		
	self deny: query = query2