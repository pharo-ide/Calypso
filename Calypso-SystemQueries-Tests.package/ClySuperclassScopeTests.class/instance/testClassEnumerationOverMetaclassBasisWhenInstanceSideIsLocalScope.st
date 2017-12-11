tests
testClassEnumerationOverMetaclassBasisWhenInstanceSideIsLocalScope

	scope := ClySuperclassScope of: ClyClass1FromP1 class localScope: ClyInstanceSideScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {Object. ProtoObject } asSet