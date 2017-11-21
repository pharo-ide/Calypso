tests
testCheckIfEmpty
	query scope: (ClyMethodScope of: {
		ClyClassWithDeprecatedMethods >> #deprecatedMethod1}).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: {
		ClyClassWithDeprecatedMethods >> #notDeprecatedMethod}).
	self assert: query checkEmptyResult