tests
testNotIncludesAbstractMethodWhichIsImplemented

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self deny: (group includesMethod: ClyAbstractClassExample >> #abstractMethod1)