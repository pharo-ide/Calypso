tests
testClassEnumerationOverInstanceSideBasisWhenBothMetaLevelsAreLocalScope

	scope := ClySuperclassScope of: ClyClass1FromP1 localScope: ClyBothMetaLevelClassScope.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {Object. Object class. ProtoObject. ProtoObject class } asSet