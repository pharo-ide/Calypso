tests
testCanIncludeAbstractMethodWhichIsNotImplemented

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (group canIncludeMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)