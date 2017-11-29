tests
testFillingWithEmptyList

	queryResult fillWith: #().
	
	self assert: queryResult size equals: 0