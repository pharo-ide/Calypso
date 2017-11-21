tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL}).
	self deny: query checkEmptyResult.

	query scope: (ClyMethodScope of: {
		ClyClass9FromPExtendedByP5 >> #extentionMethodFromClass9}).
	self assert: query checkEmptyResult