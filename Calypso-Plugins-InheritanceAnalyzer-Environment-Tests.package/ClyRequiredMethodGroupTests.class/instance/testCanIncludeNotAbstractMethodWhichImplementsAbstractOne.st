tests
testCanIncludeNotAbstractMethodWhichImplementsAbstractOne

	group classes: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractSubclassExample >> #abstractMethod1)