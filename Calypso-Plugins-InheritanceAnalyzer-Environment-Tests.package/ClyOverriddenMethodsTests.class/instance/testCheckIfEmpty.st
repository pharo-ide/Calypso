tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #overriddenMethod}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod2}).
	self assert: query checkEmptyResult