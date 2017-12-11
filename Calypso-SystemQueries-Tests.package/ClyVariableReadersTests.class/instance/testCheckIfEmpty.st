tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: self class >> #reader1OfVar1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: self class >> #writerOfVar1 in: environment).
	self assert: query checkEmptyResult