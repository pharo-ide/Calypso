tests
testCheckIfEmpty
	query tag: #Tag1.

	query scope: (ClyClassScope of: {ClyClass7WithTag1FromP5}).
	self deny: (query isEmptyIn: environment).
	
	query scope: (ClyClassScope of: {ClyClass8WithTag2FromP5}).
	self assert: (query isEmptyIn: environment)