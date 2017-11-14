tests
testCanIncludeMethodOfTargetClassWhichOverrodeAbstractOne

	group classScope: { ClyClassWhichInheritsAbstractClass }.	
	
	self assert: (group canIncludeMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)