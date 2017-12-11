tests
testNotAffectedByChangeOfNotAbstractMethod
	query scope: (ClyClassScope of: ClyClassWhichInheritsAbstractClass in: environment).
	
	self deny: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)