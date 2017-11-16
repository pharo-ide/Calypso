tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {self class >> #reference1OfVar1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {self class >> #referenceOfAnotherVar }).
	self assert: (query isEmptyIn: environment)