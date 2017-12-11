tests
testClassEnumerationOverMetaclassWhenClassSideIsLocalScope

	scope := ClySuperclassScope of: ClyClass1FromP1 class localScope: ClyClassSideScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {Object class. ProtoObject class } asSet