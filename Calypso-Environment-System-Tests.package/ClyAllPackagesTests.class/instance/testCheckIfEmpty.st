tests
testCheckIfEmpty
	query scope: (ClyPackageScope of: {ClyClass1FromP1 package} in: environment).
	self deny: query checkEmptyResult