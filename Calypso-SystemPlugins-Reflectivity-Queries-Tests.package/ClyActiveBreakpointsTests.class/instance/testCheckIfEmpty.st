tests
testCheckIfEmpty
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	query scope: (ClyMethodScope 
		of: (ClyClassWithHalts >> #methodWithHalts1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithBreakpoints) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult