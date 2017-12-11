tests
testFillingWithTraitAndItsUsersWhenSomeUserInMiddleIsMissing
	
	queryResult fillWith: {
		ClyTraitRoot1. ClyTraitChild1. ClyClassWithTraits. ClyTraitChild2}.
		
	self assertItems: { 
		ClyTraitRoot1. 0.
			ClyTraitChild1. 1. ClyClassWithTraits. 2. 
			ClyTraitChild2. 1. ClyClassWithTraits. 2
		 }