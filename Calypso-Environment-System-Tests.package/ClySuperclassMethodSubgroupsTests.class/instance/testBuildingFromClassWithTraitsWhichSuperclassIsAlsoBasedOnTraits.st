tests
testBuildingFromClassWithTraitsWhichSuperclassIsAlsoBasedOnTraits

	| superclassTraitGroup |
	self retrieveSubgroupsFrom: { ClySubclassWithTraitsOfClassWithTraits }.

	self assertItems: {
		ClyTraitChild3. 0. 
		ClyTraitRoot1. 1. ClyTraitRoot2. 1.
		ClyClassWithTraits. 0.
		ClyTraitChild1. 1. 
		ClyTraitChild2Child. 1. ClyTraitChild2. 2. 
		Object. 1. ProtoObject. 2}.
		
	superclassTraitGroup := actualObjects at: 5.
	self assert: superclassTraitGroup superclass equals: ClyTraitChild1.
	self assert: superclassTraitGroup classes asArray equals: {ClySubclassWithTraitsOfClassWithTraits}