tests
testCheckIfEmpty
	self installCounterInto: #methodWithCounter.
	query scope: (ClyMethodScope 
		of: (self class >> #methodWithCounter) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult