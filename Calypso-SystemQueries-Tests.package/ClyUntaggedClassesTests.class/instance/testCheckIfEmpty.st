tests
testCheckIfEmpty
	query
		scope: (ClyClassScope ofAll: {ClyClass6UntaggedFromP5} in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyClassScope ofAll: {ClyClass7WithTag1FromP5} in: environment).
	self assert: query checkEmptyResult