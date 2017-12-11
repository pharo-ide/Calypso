tests
testCheckIfEmpty
	query scope: (ClyMethodScope 
		of: (ClyAbstractClassExample >> #abstractMethod1)	in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyAbstractClassExample >> #overriddenMethod) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyAbstractClassExample >> #abstractMethod2) in: environment).
	self assert: query checkEmptyResult