tests
testCheckIfEmpty
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithDeprecatedMethods >> #deprecatedMethod1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithDeprecatedMethods >> #notDeprecatedMethod)}
				in: environment).
	self assert: query checkEmptyResult