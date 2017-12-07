tests
testComparisonOfSimilarQueriesWithDifferentScopes
	| query2 |
	query2 := self createQuery.
	query scope: (ClyScopeExample ofAll: #(basisObject1) in: environment).
	query2
		scope: (ClyScopeExample ofAll: #(basisObject2) in: environment).
	self deny: query = query2.
	query2
		scope: (ClyScopeExample2 ofAll: #(basisObject1) in: environment).
	self deny: query = query2