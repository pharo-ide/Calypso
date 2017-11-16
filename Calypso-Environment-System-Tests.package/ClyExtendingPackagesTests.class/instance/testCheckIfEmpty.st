tests
testCheckIfEmpty

	query scope: (ClyClassScope of: {ClySubclassLOfClass0FromPExtendedByP1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyClassScope of: {ClyClass1FromP1}).
	self assert: (query isEmptyIn: environment)
