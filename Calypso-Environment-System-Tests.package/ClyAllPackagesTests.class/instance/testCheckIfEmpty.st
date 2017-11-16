tests
testCheckIfEmpty

	query scope: (ClyPackageScope of: {ClyClass1FromP1 package}).
	self deny: (query isEmptyIn: environment)