tests
testFillingWithUsersOfTraitWhenRootTraitIsMissingInGivenList
	
	queryResult fillWith: {
		ClyTraitChild1. ClyClassWithTraits. ClyTraitChild2}.
		
	self assertItems: { 
		ClyTraitChild1. 0. ClyClassWithTraits. 1. 
		ClyTraitChild2. 0. ClyClassWithTraits. 1 }