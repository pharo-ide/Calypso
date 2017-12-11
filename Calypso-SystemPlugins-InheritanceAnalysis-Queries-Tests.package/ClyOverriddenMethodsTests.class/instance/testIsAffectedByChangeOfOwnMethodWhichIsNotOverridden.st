tests
testIsAffectedByChangeOfOwnMethodWhichIsNotOverridden
	query := ClyOverriddenMethods 
		from: ClyClassScope of: ClyClassWhichInheritsAbstractClass in: environment.
	
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >>#notOverriddenMethod)