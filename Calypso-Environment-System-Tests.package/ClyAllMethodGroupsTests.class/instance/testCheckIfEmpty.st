tests
testCheckIfEmpty
	| scope |
	scope := ClyClassScope of: {ClyClass1FromP1} in: environment.
	query scope: scope.
	
	self deny: query checkEmptyResult