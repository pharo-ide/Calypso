tests
testIsEmptyFromEmptyPackageScope
	query scope: (ClyPackageScope ofAll: #() in: environment).
	self assert: query checkEmptyResult