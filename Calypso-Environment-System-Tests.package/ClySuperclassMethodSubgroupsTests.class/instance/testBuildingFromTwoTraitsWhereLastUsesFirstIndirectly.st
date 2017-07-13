tests
testBuildingFromTwoTraitsWhereLastUsesFirstIndirectly

	self retrieveSubgroupsFrom: {ClyTraitRoot1. ClyTraitChild2Child }.

	self assertItems: {
		ClyTraitChild2. 0. ClyTraitRoot1. 1. ClyTraitRoot2. 1}