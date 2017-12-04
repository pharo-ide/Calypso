tests
testClassEnumerationWhenRootClassHasTraits

	| expected |
	scope := ClyMultipleClassRelationScope 
		of: { ClyClassWithTraits } merging: {ClySuperclassScope. ClyInheritedTraitScope }.
	
	scope classesDo: [ :each | result add: each].
	
	expected := { Object. ProtoObject }, ClyClassWithTraits traitComposition allTraits.
	self assert: result asSet equals: expected asSet