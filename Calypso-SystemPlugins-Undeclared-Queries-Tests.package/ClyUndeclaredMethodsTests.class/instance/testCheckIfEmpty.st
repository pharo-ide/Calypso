tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithUndeclares >> #method1WithUndeclares)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyMethodScope ofAll: {(Object >> #printString)} in: environment).
	self assert: query checkEmptyResult