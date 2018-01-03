tests
testIsAffectedByChangeOfOwnMethodWhichIsNotOverridden
	
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)
