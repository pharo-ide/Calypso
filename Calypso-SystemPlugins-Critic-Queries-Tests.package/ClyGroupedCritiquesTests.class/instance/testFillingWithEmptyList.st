tests
testFillingWithEmptyList

	queryResult fillWith: { }.
	
	self assert: queryResult isEmpty