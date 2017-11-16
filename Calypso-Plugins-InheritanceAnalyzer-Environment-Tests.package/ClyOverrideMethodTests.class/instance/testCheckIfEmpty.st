tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyClassWhichInheritsAbstractClass >> #abstractMethod1}).
	self deny: (query isEmptyIn: environment).
	query scope: (ClyMethodScope of: {ClyClassWhichInheritsAbstractClass >> #overriddenMethod}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod}).
	self assert: (query isEmptyIn: environment)