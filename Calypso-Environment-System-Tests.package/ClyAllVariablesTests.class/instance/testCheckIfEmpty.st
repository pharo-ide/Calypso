tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {ClyClass1FromP1} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: {ProtoObject} in: environment).
	self assert: query checkEmptyResult