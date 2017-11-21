tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {self class}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: {self class superclass}).
	self assert: query checkEmptyResult