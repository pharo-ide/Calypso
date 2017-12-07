tests
testIsEmptyFromEmptyPackageScope
	query scope: (ClyPackageScope emptyIn: environment).
	
	self assert: query checkEmptyResult