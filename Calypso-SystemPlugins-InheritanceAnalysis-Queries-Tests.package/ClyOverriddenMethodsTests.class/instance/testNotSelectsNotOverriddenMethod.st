tests
testNotSelectsNotOverriddenMethod

	self deny: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#notOverriddenMethod)