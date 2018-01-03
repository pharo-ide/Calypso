tests
testComparisonWithSimilarScopeButWithDifferentMetaLevelScope

	| scope2 |
	scope := self createSampleScope.
	scope2 := self createSampleScope.
	
	self deny: scope localScopeClass = ClyInstanceSideScope.
	scope2 localScopeClass: ClyInstanceSideScope.
	self deny: scope = scope2