tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: (ClyClassWithDeprecatedMethods >> #deprecatedMethod1)
		in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithDeprecatedMethods >> #notDeprecatedMethod)
		in: environment).
	self assert: query checkEmptyResult