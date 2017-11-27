tests
testCheckIfEmpty
	| scope |
	scope := ClyInstanceSideScope of: {ClyClass1FromP1} in: environment.
	query scope: scope.
	
	self deny: query checkEmptyResult