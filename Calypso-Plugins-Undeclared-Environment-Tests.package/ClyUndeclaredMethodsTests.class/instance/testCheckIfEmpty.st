tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyClassWithUndeclares >> #method1WithUndeclares}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {Object >> #printString}).
	self assert: (query isEmptyIn: environment)