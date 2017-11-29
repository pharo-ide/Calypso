tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {self class >> #reference1OfClass} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {self class >> #referenceOfAnotherClass} in: environment).
	self assert: query checkEmptyResult