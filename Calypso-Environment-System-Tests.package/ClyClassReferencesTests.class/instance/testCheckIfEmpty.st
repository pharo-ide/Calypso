tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {self class >> #reference1OfClass}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {self class >> #referenceOfAnotherClass}).
	self assert: (query isEmptyIn: environment)