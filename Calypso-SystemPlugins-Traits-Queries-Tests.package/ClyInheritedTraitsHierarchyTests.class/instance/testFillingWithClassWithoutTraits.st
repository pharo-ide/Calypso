tests
testFillingWithClassWithoutTraits
	
	self setUpScope: (ClyInheritedTraitScope of: {ClyClassWithoutTraits}).
	queryResult fillWith: {ClyClassWithoutTraits}.
		
	self assertItems: {ClyClassWithoutTraits. 0}