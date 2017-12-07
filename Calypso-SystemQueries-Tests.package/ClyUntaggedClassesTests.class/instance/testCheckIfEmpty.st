tests
testCheckIfEmpty
	query scope: (ClyClassScope of: ClyClass6UntaggedFromP5 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: ClyClass7WithTag1FromP5 in: environment).
	self assert: query checkEmptyResult