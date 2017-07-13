tests
testCanIncludeMethodOfTargetClassWhichOverrodeAbstractOne

	group classes: { ClyClassWhichInheritsAbstractClass }.	
	
	self assert: (group canIncludeMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)