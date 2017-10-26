tests
testFillingWithOnlyClassWhichHasTraits
	
	queryResult environmentScope: (ClyInheritedTraitScope of: {ClyClassWithTraits}).
	queryResult fillWith: {ClyClassWithTraits}.
		
	self assertItems: {ClyClassWithTraits. 0}