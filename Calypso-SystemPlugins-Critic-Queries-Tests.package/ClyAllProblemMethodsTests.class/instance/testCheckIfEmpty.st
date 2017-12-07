tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithProblemMethods >> #methodWithHalt)}
				in: environment).
	self deny: query checkEmptyResult.
	query := self createQuery.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithProblemMethods >> #methodWithoutCritiques)}
				in: environment).
	self assert: query checkEmptyResult