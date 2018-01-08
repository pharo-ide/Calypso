tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: (ClyClassWithFlags >> #methodWithFlag)
		in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithFlags >> #methodWithoutFlag)
		in: environment).
	self assert: query checkEmptyResult