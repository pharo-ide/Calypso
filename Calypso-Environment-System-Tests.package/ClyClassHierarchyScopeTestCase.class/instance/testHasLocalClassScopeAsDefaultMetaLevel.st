tests
testHasLocalClassScopeAsDefaultMetaLevel

	scope := self createScope.
	
	self assert: scope metaLevelScope equals: ClyLocalClassScope 
	