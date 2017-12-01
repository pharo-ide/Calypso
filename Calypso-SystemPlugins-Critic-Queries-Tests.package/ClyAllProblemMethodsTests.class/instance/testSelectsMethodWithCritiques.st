tests
testSelectsMethodWithCritiques

	self assert: (query selectsMethod: (ClyClassWithProblemMethods >> #methodWithHalt))