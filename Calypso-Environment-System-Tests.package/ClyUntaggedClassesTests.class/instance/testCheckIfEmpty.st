tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {ClyClass6UntaggedFromP5}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: {ClyClass7WithTag1FromP5}).
	self assert: query checkEmptyResult