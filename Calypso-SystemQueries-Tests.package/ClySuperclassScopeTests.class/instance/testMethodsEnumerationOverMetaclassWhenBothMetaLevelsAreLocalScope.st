tests
testMethodsEnumerationOverMetaclassWhenBothMetaLevelsAreLocalScope

	| expected |
	scope := ClySuperclassScope of: ClyClass1FromP1 class localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].

	expected := { Object. Object class. ProtoObject. ProtoObject class  }
		flatCollect: #localMethods as: IdentitySet..
	self assert: result asIdentitySet equals: expected