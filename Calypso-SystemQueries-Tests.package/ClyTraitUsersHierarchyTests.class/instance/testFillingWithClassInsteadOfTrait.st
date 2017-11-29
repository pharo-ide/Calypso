tests
testFillingWithClassInsteadOfTrait

	self setUpScope: (ClyTraitUserScope of: {ClyClass1FromP1}).
	
	queryResult fillWith: {ClyClass1FromP1}.
		
	self assertItems: {ClyClass1FromP1. 0}