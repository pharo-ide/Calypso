tests
testCheckIfEmpty
	| scope |
	scope := ClyPackageScope	of: {ClyClass7WithTag1FromP5 package} in: environment.
	query scope: scope.
	self deny: query checkEmptyResult.
	
	scope := ClyPackageScope of: {ClySubclassMOfClass1FromP2 package} in: environment.
	query scope: scope.
	self assert: query checkEmptyResult