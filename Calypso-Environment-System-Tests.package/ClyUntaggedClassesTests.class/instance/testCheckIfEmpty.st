tests
testCheckIfEmpty

	query scope: (ClyClassScope of: {ClyClass6UntaggedFromP5}).
	self deny: (query isEmptyIn: environment).
	
	query scope: (ClyClassScope of: {ClyClass7WithTag1FromP5}).
	self assert: (query isEmptyIn: environment)