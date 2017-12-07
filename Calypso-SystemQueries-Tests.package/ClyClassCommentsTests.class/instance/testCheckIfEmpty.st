tests
testCheckIfEmpty
	query scope: (ClyClassScope ofAll: {self class} in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyClassScope ofAll: {self class superclass} in: environment).
	self assert: query checkEmptyResult