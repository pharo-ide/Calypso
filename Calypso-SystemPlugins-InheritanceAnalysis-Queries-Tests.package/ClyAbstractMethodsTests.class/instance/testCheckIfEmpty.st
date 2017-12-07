tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyAbstractClassExample >> #abstractMethod1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope: (ClyMethodScope ofAll: {(Object >> #printString)} in: environment).
	self assert: query checkEmptyResult