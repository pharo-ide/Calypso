tests
testComparisonOfSimilarQueriesWithDifferentScopes

	| query2 |
	query2 := self createQuery. 
	query scope: (ClyScopeExample of: #(basisObject1)).
	query2 scope: (ClyScopeExample of: #(basisObject2)).
	self deny: query = query2.
	
	query2 scope: (ClyScope of: #(basisObject1)).
	self deny: query = query2.