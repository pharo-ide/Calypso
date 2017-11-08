tests
testComparisonWithSimilarScopeButWithDifferentMetaLevelScope

	| scope2 |
	scope := self createSampleScope.
	scope2 := self createSampleScope.
	
	self deny: scope metaLevelScope = ClyInstanceSideScope.
	scope2 metaLevelScope: ClyInstanceSideScope.
	self deny: scope = scope2