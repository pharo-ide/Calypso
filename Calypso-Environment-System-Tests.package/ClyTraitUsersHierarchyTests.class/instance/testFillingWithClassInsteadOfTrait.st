tests
testFillingWithClassInsteadOfTrait

	queryResult environmentScope: (ClyTraitUserScope of: {ClyClass1FromP1}).
	
	queryResult fillWith: {ClyClass1FromP1}.
		
	self assertItems: {ClyClass1FromP1. 0}