tests
testFillingWithClassInsteadOfTrait

	self setUpScope: (ClyTraitUserScope of: {ClyClassWithoutTraits}).
	
	queryResult fillWith: {ClyClassWithoutTraits}.
		
	self assertItems: {ClyClassWithoutTraits. 0}