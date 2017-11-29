tests
testFillingWithClassesMultipleTimes

	queryResult fillWith: { ClyClass1FromP1. ClySubclassN1OfClass1FromP1 }.
	queryResult fillWith: { ClySubclassN2OfClass1FromP1 }.
	
	self assertItems: {
		ClyClass1FromP1. 0. ClySubclassN1OfClass1FromP1. 1. 
		ClySubclassN2OfClass1FromP1. 0}