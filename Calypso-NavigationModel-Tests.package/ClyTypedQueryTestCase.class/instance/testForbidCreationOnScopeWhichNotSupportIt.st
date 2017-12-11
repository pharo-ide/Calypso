tests
testForbidCreationOnScopeWhichNotSupportIt

	[query scope: (ClyCompositeScope in: environment).
	self assert: false description: 'Query should be supported by scope'
	] ifError: [].
	