tests
testClassEnumerationOverMetaclassWhenBothMetaLevelsAreLocalScope

	scope := ClySuperclassScope of: { ClyClass1FromP1 class } localScope: ClyBothMetaLevelClassScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {Object. Object class. ProtoObject. ProtoObject class } asSet