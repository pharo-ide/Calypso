tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {self class >> #reference1OfVar1}).
	self deny: query checkEmptyResult.

	query scope: (ClyMethodScope of: {self class >> #referenceOfAnotherVar}).
	self assert: query checkEmptyResult