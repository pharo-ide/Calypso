tests
testCheckIfEmpty
		
	query scope: (ClyMethodScope of: { self class >> #methodWithHalt} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: { self class >> #methodWithoutCritiques} in: environment).
	self assert: query checkEmptyResult.