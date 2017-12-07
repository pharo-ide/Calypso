tests
testMethodsEnumerationOverMetaclassWhenClassSideIsLocalScope

	| expected |
	scope := ClySuperclassScope of: ClyClass1FromP1 class localScope: ClyClassSideScope.
	
	scope methodsDo: [ :each | result add: each].

	expected := { Object class. ProtoObject class  } flatCollect: #localMethods as: IdentitySet..
	self assert: result asIdentitySet equals: expected