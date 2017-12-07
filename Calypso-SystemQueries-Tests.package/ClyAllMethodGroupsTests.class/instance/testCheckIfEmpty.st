tests
testCheckIfEmpty
	| scope |
	scope := ClyInstanceSideScope
		ofAll: {ClyClass1FromP1}
		in: environment.
	query scope: scope.
	self deny: query checkEmptyResult