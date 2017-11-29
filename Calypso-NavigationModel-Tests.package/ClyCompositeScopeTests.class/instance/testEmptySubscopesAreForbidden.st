tests
testEmptySubscopesAreForbidden
	
	[ClyCompositeScope on: #().
	self assert: false description: 'empty subscopes should be forbidden'] ifError: [].
	