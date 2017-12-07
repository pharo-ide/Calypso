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
				ofAll: {(ClyClass9FromPExtendedByP5 >> #extensionMethodFromClass9)}
				in: environment).
	self assert: query checkEmptyResult