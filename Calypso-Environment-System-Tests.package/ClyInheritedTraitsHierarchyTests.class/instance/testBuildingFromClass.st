tests
testBuildingFromClass
	
	self buildFromClass: ClyClassWithTraits.
		
	self assertItems: {
		ClyClassWithTraits. 0.
			ClyTraitChild1. 1. ClyTraitRoot1. 2. ClyTraitRoot2. 2. 
			ClyTraitChild2Child. 1. ClyTraitChild2. 2. ClyTraitRoot1. 3. ClyTraitRoot2. 3}.