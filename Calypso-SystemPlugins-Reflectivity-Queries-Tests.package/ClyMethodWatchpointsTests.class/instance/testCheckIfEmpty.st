tests
testCheckIfEmpty
	self installWatchpointInto: #methodWithWatchpoint.
	query scope: (ClyMethodScope 
		of: (self class >> #methodWithWatchpoint) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult