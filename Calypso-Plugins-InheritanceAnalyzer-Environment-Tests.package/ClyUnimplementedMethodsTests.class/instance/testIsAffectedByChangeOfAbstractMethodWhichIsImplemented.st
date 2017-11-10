tests
testIsAffectedByChangeOfAbstractMethodWhichIsImplemented
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample >> #abstractMethod1)