tests
testIncludesAbstractMethodWhichIsNotImplemented

	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	self assert: (group includesMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (group includesMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)