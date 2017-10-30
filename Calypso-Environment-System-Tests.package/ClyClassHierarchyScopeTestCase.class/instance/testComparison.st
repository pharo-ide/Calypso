tests
testComparison

	| scope2 |
	scope := self createScope.
	scope2 := self createScope.
	
	self assert: scope equals: scope2.
	self assert: scope hash equals: scope2 hash.
	
	self deny: scope metaLevelScope = ClyInstanceSideScope.
	scope2 metaLevelScope: ClyInstanceSideScope.
	self deny: scope = scope2.