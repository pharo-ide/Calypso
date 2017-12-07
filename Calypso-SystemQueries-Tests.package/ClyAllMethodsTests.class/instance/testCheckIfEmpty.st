tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClass1FromP1 >> #tag1Method1)}
				in: environment).
	self deny: query checkEmptyResult