tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod1}).
	self deny: (query isEmptyIn: environment).
	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #overriddenMethod}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod2}).
	self assert: (query isEmptyIn: environment)