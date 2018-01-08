tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: (ClyClassWithFFIMethods >> #ffiMethod)
		in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithFFIMethods >> #notFFIMethod)
		in: environment).
	self assert: query checkEmptyResult