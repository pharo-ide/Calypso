tests
testHasLocalClassScopeAsDefaultMetaLevel

	scope := self createSampleScope.
	
	self assert: scope metaLevelScope equals: ClyLocalClassScope 
	