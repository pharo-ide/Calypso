tests
testNotIncludesNotOverrideMethod

	group classes: { ClyClassWhichInheritsAbstractClass }.	
	
	self deny: (group includesMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)