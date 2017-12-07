tests
testCheckIfEmpty
	query
		scope: (ClyPackageScope ofAll: {ClyClass1FromP1 package} in: environment).
	self deny: query checkEmptyResult