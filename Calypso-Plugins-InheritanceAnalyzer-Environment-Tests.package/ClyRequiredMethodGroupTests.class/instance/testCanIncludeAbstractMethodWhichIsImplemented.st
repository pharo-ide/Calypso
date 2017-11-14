tests
testCanIncludeAbstractMethodWhichIsImplemented

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractClassExample >> #abstractMethod1)