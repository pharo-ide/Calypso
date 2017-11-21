tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL} in: environment).
	self deny: query checkEmptyResult.

	query scope: (ClyMethodScope of: {
		ClyClass9FromPExtendedByP5 >> #extentionMethodFromClass9} in: environment).
	self assert: query checkEmptyResult