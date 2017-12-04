tests
testClassEnumerationWhenClassAndSuperclassHaveTraits

	| expected |
	scope := ClyMultipleClassRelationScope 
		of: { ClySubclassWithTraitsOfClassWithTraits }
		merging: {ClySuperclassScope. ClyInheritedTraitScope }.
	
	scope classesDo: [ :each | result add: each].
	
	expected := { Object. ProtoObject. ClyClassWithTraits }
		, ClyClassWithTraits traitComposition allTraits
		, ClySubclassWithTraitsOfClassWithTraits traitComposition allTraits.
	self assert: result asArray equals: (expected asSortedCollection: #name ascending) asArray