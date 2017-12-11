tests
testClassEnumerationWhenNoTraitsExist

	scope := ClyMultipleClassRelationScope 
		of: { ClyClassWithoutTraits } merging: {ClySuperclassScope. ClyInheritedTraitScope }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {Object. ProtoObject} asSet