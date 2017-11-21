tests
testCheckIfEmpty
	query tag: #Tag1.
	query scope: (ClyClassScope of: {ClyClass7WithTag1FromP5} in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyClassScope of: {ClyClass8WithTag2FromP5} in: environment).
	self assert: query checkEmptyResult