tests
testIsAffectedByChangeOfNotAbstractMethodWhichImplementsAbstractOne
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample >> #abstractMethod1)