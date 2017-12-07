tests
testCheckIfEmpty
	query scope: (ClyClassScope ofAll: {ClyClass1FromP1} in: environment).
	self deny: query checkEmptyResult