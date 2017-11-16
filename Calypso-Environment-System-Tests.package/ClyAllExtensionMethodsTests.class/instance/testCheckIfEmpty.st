tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {ClyClass1FromP1 >> #tag1Method1}).
	self assert: (query isEmptyIn: environment)