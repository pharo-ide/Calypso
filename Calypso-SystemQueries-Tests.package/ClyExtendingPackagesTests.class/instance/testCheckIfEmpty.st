tests
testCheckIfEmpty
	query
		scope:
			(ClyClassScope
				ofAll: {ClySubclassLOfClass0FromPExtendedByP1}
				in: environment).
	self deny: query checkEmptyResult.
	query scope: (ClyClassScope ofAll: {ClyClass1FromP1} in: environment).
	self assert: query checkEmptyResult