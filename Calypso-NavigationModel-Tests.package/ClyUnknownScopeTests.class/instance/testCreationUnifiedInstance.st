tests
testCreationUnifiedInstance
	scope := self createSampleScope.
	
	self assert: scope asUnifiedInstance == scope