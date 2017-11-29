tests
testForbidCreationOnScopeWithoutEnvironment

	[query scope: (ClyScopeExample of: {  }).
	self assert: false description: 'Query should be only created on scope bound to concrete environment'
	] ifError: [].
	