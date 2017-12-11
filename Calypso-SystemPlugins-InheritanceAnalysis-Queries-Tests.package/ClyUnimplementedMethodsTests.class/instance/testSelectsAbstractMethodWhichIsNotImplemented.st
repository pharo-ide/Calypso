tests
testSelectsAbstractMethodWhichIsNotImplemented

	self assert: (query selectsMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (query selectsMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)