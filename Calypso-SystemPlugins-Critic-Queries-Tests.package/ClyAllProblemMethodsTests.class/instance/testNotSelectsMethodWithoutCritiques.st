tests
testNotSelectsMethodWithoutCritiques

	self deny: (query selectsMethod: (ClyClassWithProblemMethods >> #methodWithoutCritiques))