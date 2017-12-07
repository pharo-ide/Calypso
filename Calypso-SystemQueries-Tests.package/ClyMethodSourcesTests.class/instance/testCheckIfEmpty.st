tests
testCheckIfEmpty
	query scope: (ClyClassScope of: self class in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: self class superclass in: environment).
	self assert: query checkEmptyResult