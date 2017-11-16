tests
testCheckIfEmpty

	query scope: (ClyMethodScope of: {ClyClassWithDeprecatedMethods >> #deprecatedMethod1}).
	self deny: (query isEmptyIn: environment).

	query scope: (ClyMethodScope of: {ClyClassWithDeprecatedMethods >> #notDeprecatedMethod}).
	self assert: (query isEmptyIn: environment)