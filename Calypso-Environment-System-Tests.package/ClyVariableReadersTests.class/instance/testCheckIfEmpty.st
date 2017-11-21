tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {self class >> #reader1OfVar1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {self class >> #writerOfVar1}).
	self assert: query checkEmptyResult