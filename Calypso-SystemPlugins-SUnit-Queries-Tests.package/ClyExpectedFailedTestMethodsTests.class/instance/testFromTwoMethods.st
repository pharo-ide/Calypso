tests
testFromTwoMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyTestedClassTests >> #testExpectedFailure. 
		ClyTestedClassTests >> #testOne}.
	
	self assert: foundSelectors sorted asArray equals: #(testExpectedFailure) 