tests
testBuildingFromThreeTraitsWhereTheyUseEachOthers

	self retrieveSubgroupsFrom: { ClyTraitChild2Child. ClyTraitChild2. ClyTraitRoot1 }.

	self assertItems: {
		ClyTraitChild2. 0. ClyTraitRoot1. 1. ClyTraitRoot2. 1}