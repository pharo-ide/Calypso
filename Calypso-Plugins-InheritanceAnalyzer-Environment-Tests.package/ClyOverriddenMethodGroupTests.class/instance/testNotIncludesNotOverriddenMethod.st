tests
testNotIncludesNotOverriddenMethod

	group classScope: { ClyClassWhichInheritsAbstractClass }.	
	
	self deny: (group includesMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)