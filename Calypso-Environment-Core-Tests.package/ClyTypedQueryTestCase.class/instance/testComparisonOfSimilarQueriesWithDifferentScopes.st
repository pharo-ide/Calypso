tests
testComparisonOfSimilarQueriesWithDifferentScopes

	| query2 |
	query2 := self createQuery. 
	query scope: (ClyScopeExample of: #(basisObject1) in: environment).
	query2 scope: (ClyScopeExample of: #(basisObject2) in: environment).
	self deny: query = query2.
	
	query2 scope: (ClyScopeExample2 of: #(basisObject1) in: environment).
	self deny: query = query2.