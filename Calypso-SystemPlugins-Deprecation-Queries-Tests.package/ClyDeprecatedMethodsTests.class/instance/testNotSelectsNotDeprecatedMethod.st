tests
testNotSelectsNotDeprecatedMethod

	self deny: (query selectsMethod: ClyClassWithDeprecatedMethods >> #notDeprecatedMethod)