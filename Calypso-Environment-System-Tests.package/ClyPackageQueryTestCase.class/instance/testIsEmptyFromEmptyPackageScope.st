tests
testIsEmptyFromEmptyPackageScope
	query scope: (ClyPackageScope of: #() in: environment).
	self assert: query checkEmptyResult