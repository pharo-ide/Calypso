tests
testFillingWithTwoClasses

	queryResult fillWith: {Array. String}.
	
	self assert: queryResult items equals: {Array binding. String binding}.
	