tests
testCheckIfEmpty
		
	query scope: (ClyMethodScope of: {ClyClassWithProblemMethods >> #methodWithHalt} in: environment).
	self deny: query checkEmptyResult.
	
	query := self createQuery.
	query scope: (ClyMethodScope of: {ClyClassWithProblemMethods >> #methodWithoutCritiques} in: environment).
	self assert: query checkEmptyResult.