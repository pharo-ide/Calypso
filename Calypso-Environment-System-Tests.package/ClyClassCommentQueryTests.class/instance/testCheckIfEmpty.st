tests
testCheckIfEmpty

	query scope: (ClyClassScope of: {self class}).
	self deny: (query isEmptyIn: environment).
	
	query scope: (ClyClassScope of: {self class superclass}).
	self assert: (query isEmptyIn: environment)