tests
testBuildingFromClass
	
	self buildFromClass: ClyTraitRoot1.
		
	self assertItems: { 
		ClyTraitRoot1. 0.
			ClyTraitChild1. 1. ClyClassWithTraits. 2. 
			ClyTraitChild2. 1. ClyTraitChild2Child. 2. ClyClassWithTraits. 3. 
			ClyTraitChild3. 1. ClySubclassWithTraitsOfClassWithTraits. 2
		 }