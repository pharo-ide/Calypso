tests
testCanNotIncludeAbstractMethodOfNotRelatedClass

	group classes: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self deny: (group canIncludeMethod: ClyMethodGroup >> #methods)