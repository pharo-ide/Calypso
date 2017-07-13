tests
testNotIncludesAbstractMethodWhichIsImplemented

	group classes: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self deny: (group includesMethod: ClyAbstractClassExample >> #abstractMethod1)