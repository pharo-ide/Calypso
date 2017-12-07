tests
testComparisonWithCompositeScopeBasedOnDifferentQueries
	| scope2 |
	scope := self createSampleScope.
	scope2 := self createSampleScope.
	scope2
		subscopes: {(ClyScopeExample2 ofAll: #(someBasis) in: environment)}.
	self deny: scope = scope2