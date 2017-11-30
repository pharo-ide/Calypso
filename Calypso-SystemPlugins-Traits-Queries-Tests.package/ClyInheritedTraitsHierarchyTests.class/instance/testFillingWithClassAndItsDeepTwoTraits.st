tests
testFillingWithClassAndItsDeepTwoTraits
	
	queryResult fillWith: {ClyClassWithTraits. ClyTraitChild2. ClyTraitRoot2 }.
		
	self assertItems: {
		ClyClassWithTraits. 0.
			ClyTraitChild2. 1. ClyTraitRoot2. 2. 
			ClyTraitRoot2. 1}