tests
testIsAffectedByChangeOfSuperclassMethodWhichIsAlreadyImplemented
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample >> #overriddenMethod)
