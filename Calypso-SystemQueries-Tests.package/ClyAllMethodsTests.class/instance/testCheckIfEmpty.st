tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: (ClyClass1FromP1 >> #tag1Method1) in: environment).
	self deny: query checkEmptyResult