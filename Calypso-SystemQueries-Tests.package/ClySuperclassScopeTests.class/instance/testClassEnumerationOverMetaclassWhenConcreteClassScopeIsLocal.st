tests
testClassEnumerationOverMetaclassWhenConcreteClassScopeIsLocal

	scope := ClySuperclassScope of: { ClyClass1FromP1 class } localScope: ClyClassScope.

	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: ClyClass1FromP1 class allSuperclasses asSet