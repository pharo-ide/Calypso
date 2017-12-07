tests
testIsEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope emptyIn: environment).
	self assert: query checkEmptyResult