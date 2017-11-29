tests
testFillingWithTraitAndItsUsers

	self setUpScope: (ClyTraitUserScope of: {ClyTraitRoot1}).
	
	queryResult fillWith: {
		ClyTraitRoot1. ClyTraitChild1. ClyClassWithTraits. ClyTraitChild2. ClyTraitChild2Child}.
		
	self assertItems: { 
		ClyTraitRoot1. 0.
			ClyTraitChild1. 1. ClyClassWithTraits. 2. 
			ClyTraitChild2. 1. ClyTraitChild2Child. 2. ClyClassWithTraits. 3
		 }