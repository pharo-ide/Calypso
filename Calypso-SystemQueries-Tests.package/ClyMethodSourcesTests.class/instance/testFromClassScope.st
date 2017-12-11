tests
testFromClassScope

	self queryFromScope: ClyClassScope of: self class.
	
	self assert: resultItems size equals: 1.
	
	self assert: resultItems first equals: (self class >> #methodWithExpectedStringInSources)