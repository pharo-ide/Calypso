tests
testFillingWithEmptyList

	queryResult fillWith: { }.
	
	self assertItems: #()