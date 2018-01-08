tests
testNotSelectsMethodWithoutExpectedFailurePragma
	
	self deny: (query selectsMethod: ClyTestedClassTests >> #testOne)