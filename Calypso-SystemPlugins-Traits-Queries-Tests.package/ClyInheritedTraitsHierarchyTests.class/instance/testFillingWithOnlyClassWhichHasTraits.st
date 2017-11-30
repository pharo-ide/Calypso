tests
testFillingWithOnlyClassWhichHasTraits
	
	queryResult fillWith: {ClyClassWithTraits}.
		
	self assertItems: {ClyClassWithTraits. 0}