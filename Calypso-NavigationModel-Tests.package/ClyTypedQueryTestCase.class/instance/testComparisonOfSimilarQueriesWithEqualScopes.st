tests
testComparisonOfSimilarQueriesWithEqualScopes
	| query2 |
	query2 := self createQuery.
	query scope: (ClyScopeExample of: #basisObject in: environment).
	query2 scope: (ClyScopeExample of: #basisObject in: environment).
	
	self assert: query equals: query2.
	self assert: query hash equals: query2 hash