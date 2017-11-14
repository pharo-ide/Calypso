tests
testNotIncludesNotOverrideMethod

	group classScope: { ClyClassWhichInheritsAbstractClass }.	
	
	self deny: (group includesMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)