tests
testCanIncludeNotAbstractMethodWhichImplementsAbstractOne

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractSubclassExample >> #abstractMethod1)