tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {ClySubclassLOfClass0FromPExtendedByP1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: {ClyClass1FromP1}).
	self assert: query checkEmptyResult