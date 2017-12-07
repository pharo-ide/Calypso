tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll:
					{(ClySubclassLOfClass0FromPExtendedByP1
						>> #extensionMethodFromSubclassL)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClass1FromP1 >> #tag1Method1)}
				in: environment).
	self assert: query checkEmptyResult