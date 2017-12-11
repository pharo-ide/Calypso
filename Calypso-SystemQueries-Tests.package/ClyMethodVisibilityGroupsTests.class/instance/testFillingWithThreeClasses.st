tests
testFillingWithThreeClasses

	queryResult fillWith: {ClyClass2FromP1. ClySubclassN1OfClass1FromP1. ClyClass1FromP1}.
	
	self assertItems: { ClyClass1FromP1. 0. ClySubclassN1OfClass1FromP1. 1.
		ClyClass2FromP1. 0}