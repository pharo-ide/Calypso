tests
testCheckIfEmpty
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.
	query scope: (ClyMethodScope of: {ClyClassWithHaltMethods >> #haltMethod1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyClassWithBreakMethods >> #breakMethod}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyClassWithBreakMethods >> #notBreakMethod}).
	self assert: query checkEmptyResult