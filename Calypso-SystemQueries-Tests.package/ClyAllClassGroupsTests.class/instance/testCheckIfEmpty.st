tests
testCheckIfEmpty
	| scope |
	scope := ClyPackageScope
		ofAll: {ClyClass7WithTag1FromP5 package}
		in: environment.
	query scope: scope.
	self deny: query checkEmptyResult.
	scope := ClyPackageScope
		ofAll: {ClySubclassMOfClass1FromP2 package}
		in: environment.
	query scope: scope.
	self assert: query checkEmptyResult