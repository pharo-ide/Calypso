tests
testNotSelectsMethodWithCritiquesWhenTheyNotComputedYet

	self deny: (query selectsMethod: (ClyClassWithProblemMethods >> #methodWithHalt))