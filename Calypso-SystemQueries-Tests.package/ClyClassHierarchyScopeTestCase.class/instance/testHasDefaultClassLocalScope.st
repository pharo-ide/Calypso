tests
testHasDefaultClassLocalScope

	scope := self createSampleScope.
	
	self assert: scope localClassScope equals: ClyClassScope 
	