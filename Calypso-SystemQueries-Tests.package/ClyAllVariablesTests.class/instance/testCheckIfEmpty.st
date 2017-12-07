tests
testCheckIfEmpty
	query scope: (ClyClassScope ofAll: {ClyClass2FromP1} in: environment).
	self deny: query checkEmptyResult.
	query scope: (ClyClassScope ofAll: {ProtoObject} in: environment).
	self assert: query checkEmptyResult