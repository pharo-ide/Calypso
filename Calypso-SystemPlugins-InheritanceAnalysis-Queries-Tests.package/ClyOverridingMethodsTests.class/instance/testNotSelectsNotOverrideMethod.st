tests
testNotSelectsNotOverrideMethod

	self deny: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)