tests
testFillingWithTwoClassesItsTraits
	
	queryResult environmentScope: (ClyInheritedTraitScope of: {ClyClassWithTraits. ClyTraitChild2}).
	queryResult fillWith: {ClyClassWithTraits. ClyTraitChild2. ClyTraitRoot2 }.
		
	self assertItems: {
		ClyClassWithTraits. 0.
			ClyTraitRoot2. 1.
			ClyTraitChild2. 1. ClyTraitRoot2. 2. 
		ClyTraitChild2. 0. ClyTraitRoot2. 1}.