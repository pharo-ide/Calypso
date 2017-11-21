tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {ClyClass1FromP1} in: environment).
	self deny: query checkEmptyResult