tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyAbstractClassExample >> #abstractMethod1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {Object >> #printString}).
	self assert: (query isEmptyIn: environment)