tests
testFillingWithTwoClassWhichInheriteSameTraits
	
	queryResult fillWith: {ClyClassWithTraits. ClyTraitChild2. ClyTraitRoot2.
		ClySubclassWithTraitsOfClassWithTraits "inherits Root2 in deep chain"}.
		
	self assertItems: {
		ClyClassWithTraits. 0.
			ClyTraitChild2. 1. ClyTraitRoot2. 2. 
			ClyTraitRoot2. 1.
		ClySubclassWithTraitsOfClassWithTraits. 0. ClyTraitRoot2. 1}