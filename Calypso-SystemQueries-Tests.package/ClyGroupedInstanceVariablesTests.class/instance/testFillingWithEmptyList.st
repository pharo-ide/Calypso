tests
testFillingWithEmptyList

	queryResult fillWith: { }.
	
	self assertItems: {ClyAllMethodGroup. 0}