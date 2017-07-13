tests
testBuildingFromThreeTraitsWhereLastIsUsedByBoth

	self retrieveSubgroupsFrom: { ClyTraitChild1. ClyTraitChild2. ClyTraitRoot1 }.

	self assertItems: {
		ClyTraitRoot1. 0. ClyTraitRoot2. 0}