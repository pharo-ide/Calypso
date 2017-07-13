tests
testCanIncludeAbstractMethodWhichIsImplemented

	group classes: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractClassExample >> #abstractMethod1)