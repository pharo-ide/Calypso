tests
testSelectsTestMethodWithExpectedFailurePragma
	
	self assert: (query selectsMethod: ClyTestedClassTests >> #testExpectedFailure)