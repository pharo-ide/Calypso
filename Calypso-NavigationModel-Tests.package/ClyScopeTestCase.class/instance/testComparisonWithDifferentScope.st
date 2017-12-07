tests
testComparisonWithDifferentScope
	| scope2 |
	scope := self createSampleScope.
	scope2 := ClyScopeExample2 ofAll: #(basisObject) in: environment.
	self deny: scope = scope2