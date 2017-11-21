tests
testIsEmptyFromEmptyPackageScope
	query scope: (ClyPackageScope of: #()).
	self assert: query checkEmptyResult