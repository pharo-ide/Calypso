tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: ClyClassWithUndeclares >> #method1WithUndeclares in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: Object >> #printString in: environment).
	self assert: query checkEmptyResult