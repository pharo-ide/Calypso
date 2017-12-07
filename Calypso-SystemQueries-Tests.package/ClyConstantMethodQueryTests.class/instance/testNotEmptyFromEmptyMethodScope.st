tests
testNotEmptyFromEmptyMethodScope
	query scope: (ClyMethodScope emptyIn: environment).
	
	self deny: query checkEmptyResult