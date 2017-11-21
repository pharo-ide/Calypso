tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {Object >> #printString}).
	self assert: query checkEmptyResult