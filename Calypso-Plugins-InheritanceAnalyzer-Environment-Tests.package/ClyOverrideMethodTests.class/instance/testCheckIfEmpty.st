tests
testCheckIfEmpty
	query scope:	(ClyMethodScope	of: {ClyClassWhichInheritsAbstractClass >> #abstractMethod1}).
	self deny: query checkEmptyResult.

	query scope: (ClyMethodScope of: {ClyClassWhichInheritsAbstractClass >> #overriddenMethod}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod}).
	self assert: query checkEmptyResult