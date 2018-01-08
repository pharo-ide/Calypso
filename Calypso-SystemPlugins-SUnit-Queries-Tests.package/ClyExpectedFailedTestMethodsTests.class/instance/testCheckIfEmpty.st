tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: ClyTestedClassTests >> #testExpectedFailure in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope 
		of: ClyTestedClassTests >> #testOne in: environment).
	self assert: query checkEmptyResult