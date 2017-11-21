tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {ClyClass1FromP1 >> #tag1Method1}).
	
	self deny: query checkEmptyResult