tests
testComparisonOfSimilarQueriesWithEqualScopes

	| query2 |
	query2 := self createQuery. 
	query scope: (ClyScopeExample of: #(basisObject)).
	query2 scope: (ClyScopeExample of: #(basisObject)).
	self assert: query equals: query2.
	self assert: query hash equals: query2 hash