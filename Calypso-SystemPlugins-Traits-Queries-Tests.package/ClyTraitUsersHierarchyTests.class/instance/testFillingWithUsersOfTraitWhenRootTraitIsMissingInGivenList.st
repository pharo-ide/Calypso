tests
testFillingWithUsersOfTraitWhenRootTraitIsMissingInGivenList

	self setUpScope: (ClyTraitUserScope of: {ClyTraitRoot1}).
	
	queryResult fillWith: {
		ClyTraitChild1. ClyClassWithTraits. ClyTraitChild2}.
		
	self assertItems: { 
		ClyTraitChild1. 0. ClyClassWithTraits. 1. 
		ClyTraitChild2. 0. ClyClassWithTraits. 1 }