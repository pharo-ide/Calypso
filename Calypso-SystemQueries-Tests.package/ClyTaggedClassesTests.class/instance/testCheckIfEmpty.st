tests
testCheckIfEmpty
	query tag: #Tag1.
	query
		scope: (ClyClassScope ofAll: {ClyClass7WithTag1FromP5} in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyClassScope ofAll: {ClyClass8WithTag2FromP5} in: environment).
	self assert: query checkEmptyResult