tests
testCanNotIncludeAbstractMethodOfNotRelatedClass

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self deny: (group canIncludeMethod: ClyMethodGroup >> #methods)