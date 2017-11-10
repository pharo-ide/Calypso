tests
testNotAffectedByChangeOfNotAbstractMethod

	query scope: (ClyClassScope of: { ClyClassWhichInheritsAbstractClass }).	
	
	self deny: (
		query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)