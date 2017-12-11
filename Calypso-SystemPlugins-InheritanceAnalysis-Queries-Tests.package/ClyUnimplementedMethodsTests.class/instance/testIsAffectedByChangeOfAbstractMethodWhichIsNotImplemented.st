tests
testIsAffectedByChangeOfAbstractMethodWhichIsNotImplemented
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample>>#abstractMethod2).
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample>>#abstractSubclassMethod)