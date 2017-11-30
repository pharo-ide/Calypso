tests
testFillingWithClassInsteadOfTrait
	
	queryResult fillWith: {ClyClassWithoutTraits}.
		
	self assertItems: {ClyClassWithoutTraits. 0}