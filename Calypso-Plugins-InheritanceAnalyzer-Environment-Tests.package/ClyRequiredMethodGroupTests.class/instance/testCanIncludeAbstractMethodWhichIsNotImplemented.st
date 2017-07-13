tests
testCanIncludeAbstractMethodWhichIsNotImplemented

	group classes: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group canIncludeMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (group canIncludeMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)