tests
testCheckIfEmpty
	query scope:	(ClyMethodScope of: {
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {ClyClass1FromP1 >> #tag1Method1} in: environment).
	self assert: query checkEmptyResult