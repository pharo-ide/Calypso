tests
testFillingWithTwoClassWhichInheriteSameTraitsAndTheirSuperclasses
	
	queryResult fillWith: {ClyClassWithTraits. ClyTraitChild2. ClyTraitRoot2.
		ClySubclassWithTraitsOfClassWithTraits. Object. ProtoObject}.
		
	self assertItems: {
		ClySubclassWithTraitsOfClassWithTraits. 0.
			ClyTraitRoot2. 1.
			ClyClassWithTraits. 1.
				ClyTraitChild2. 2. ClyTraitRoot2. 3. 
				ClyTraitRoot2. 2.
				Object. 2. ProtoObject. 3}