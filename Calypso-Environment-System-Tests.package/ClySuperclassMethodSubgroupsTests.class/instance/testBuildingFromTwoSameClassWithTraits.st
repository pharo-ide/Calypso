tests
testBuildingFromTwoSameClassWithTraits

	self retrieveSubgroupsFrom: { ClyClassWithTraits. ClyClassWithTraits }.

	self assertItems: {
		ClyTraitChild1. 0. 
		ClyTraitChild2Child. 0. ClyTraitChild2. 1.
		ClyTraitRoot1. 0. ClyTraitRoot2. 0.
		Object. 0. ProtoObject. 1}