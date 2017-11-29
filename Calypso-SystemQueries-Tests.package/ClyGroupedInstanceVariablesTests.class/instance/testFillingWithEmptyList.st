tests
testFillingWithEmptyList

	queryResult fillWith: { }.
	
	self assertItems: {ClyInheritedMethodGroup. 0}