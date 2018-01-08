tests
testCheckIfEmpty
	self installBreakpointInto: (ClyClassWithBreakMethods >> #breakMethod).
	query scope: (ClyMethodScope 
		of: (ClyClassWithHaltMethods >> #haltMethod1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakMethods >> #breakMethod) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakMethods >> #notBreakMethod) in: environment).
	self assert: query checkEmptyResult