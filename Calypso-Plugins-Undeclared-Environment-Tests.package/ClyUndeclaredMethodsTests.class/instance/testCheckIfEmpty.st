tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {ClyClassWithUndeclares >> #method1WithUndeclares}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {Object >> #printString}).
	self assert: query checkEmptyResult