tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyClass2FromP1 >> #instanceSideClassVar1Reader}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {ClyClass1FromP1 >> #tag1Method1}).
	self assert: (query isEmptyIn: environment)