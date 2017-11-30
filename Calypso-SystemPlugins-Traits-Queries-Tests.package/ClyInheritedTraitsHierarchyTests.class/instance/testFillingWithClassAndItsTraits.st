tests
testFillingWithClassAndItsTraits
	
	queryResult fillWith: {
		ClyClassWithTraits. ClyTraitChild1. ClyTraitChild2. ClyTraitRoot1. ClyTraitChild2Child }.
		
	self assertItems: {
		ClyClassWithTraits. 0.
			ClyTraitChild1. 1. ClyTraitRoot1. 2. 
			ClyTraitChild2Child. 1. ClyTraitChild2. 2. ClyTraitRoot1. 3}.