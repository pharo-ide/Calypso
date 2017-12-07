tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWhichInheritsAbstractClass >> #abstractMethod1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWhichInheritsAbstractClass >> #overriddenMethod)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)}
				in: environment).
	self assert: query checkEmptyResult