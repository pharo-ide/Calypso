tests
testFillingWithTwoClassWhichInheriteSameTraits
	
	queryResult fillWith: {ClyClassWithTraits. ClyTraitChild2. ClyTraitRoot2.
		ClySubclassWithTraitsOfClassWithTraits "inherits Root2 in deep chain"}.
		
	self assertItems: {
		ClySubclassWithTraitsOfClassWithTraits. 0.
			ClyTraitRoot2. 1.
			ClyClassWithTraits. 1.
				ClyTraitChild2. 2. ClyTraitRoot2. 3. 
				ClyTraitRoot2. 2}