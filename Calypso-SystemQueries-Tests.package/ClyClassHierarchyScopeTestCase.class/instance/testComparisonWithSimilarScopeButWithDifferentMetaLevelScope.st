tests
testComparisonWithSimilarScopeButWithDifferentMetaLevelScope

	| scope2 |
	scope := self createSampleScope.
	scope2 := self createSampleScope.
	
	self deny: scope localClassScope = ClyInstanceSideScope.
	scope2 localClassScope: ClyInstanceSideScope.
	self deny: scope = scope2