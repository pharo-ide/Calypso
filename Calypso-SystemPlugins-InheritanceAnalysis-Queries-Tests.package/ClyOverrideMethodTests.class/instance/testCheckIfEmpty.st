tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #abstractMethod1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #overriddenMethod) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod) in: environment).
	self assert: query checkEmptyResult