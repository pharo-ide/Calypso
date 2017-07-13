tests
testBuildingFromThreeTraitsWhereLastIsUsedByBoth2

	self retrieveSubgroupsFrom: {ClyTraitRoot1. ClyTraitChild1. ClyTraitChild2 }.

	self assertItems: {
		ClyTraitRoot1. 0. ClyTraitRoot2. 0}