tests
testSelectsDeprecatedMethod

	self assert: (query selectsMethod: ClyClassWithDeprecatedMethods >> #deprecatedMethod1)