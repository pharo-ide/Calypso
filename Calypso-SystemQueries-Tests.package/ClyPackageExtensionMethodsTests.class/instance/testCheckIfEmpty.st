tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {
		ClySubclassLOfClass0FromPExtendedByP1 >> #extensionMethodFromSubclassL} in: environment).
	self deny: query checkEmptyResult.

	query scope: (ClyMethodScope of: {
		ClyClass9FromPExtendedByP5 >> #extensionMethodFromClass9} in: environment).
	self assert: query checkEmptyResult