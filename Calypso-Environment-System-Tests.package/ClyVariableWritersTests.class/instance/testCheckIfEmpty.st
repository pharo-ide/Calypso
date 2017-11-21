tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {self class >> #writer1OfVar1} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {self class >> #readerOfVar1} in: environment).
	self assert: query checkEmptyResult