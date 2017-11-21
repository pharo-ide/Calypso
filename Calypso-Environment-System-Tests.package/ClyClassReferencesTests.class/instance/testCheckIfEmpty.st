tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {self class >> #reference1OfClass}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {self class >> #referenceOfAnotherClass}).
	self assert: query checkEmptyResult