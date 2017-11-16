tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {self class >> #reader1OfVar1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {self class >> #writerOfVar1 }).
	self assert: (query isEmptyIn: environment)