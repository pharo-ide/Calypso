tests
testHasDefaultClassLocalScope

	scope := self createSampleScope.
	
	self assert: scope localScopeClass equals: ClyClassScope 
	