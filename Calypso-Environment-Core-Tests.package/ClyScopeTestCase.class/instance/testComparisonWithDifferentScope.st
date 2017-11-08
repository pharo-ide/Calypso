tests
testComparisonWithDifferentScope

	| scope2 |
	scope := self createSampleScope.
	scope2 := ClyScopeExample of: #(basisObject).
	
	self deny: scope = scope2