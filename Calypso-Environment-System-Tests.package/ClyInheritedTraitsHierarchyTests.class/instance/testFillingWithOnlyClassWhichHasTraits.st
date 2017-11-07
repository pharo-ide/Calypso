tests
testFillingWithOnlyClassWhichHasTraits
	
	self setUpScope: (ClyInheritedTraitScope of: {ClyClassWithTraits}).
	queryResult fillWith: {ClyClassWithTraits}.
		
	self assertItems: {ClyClassWithTraits. 0}