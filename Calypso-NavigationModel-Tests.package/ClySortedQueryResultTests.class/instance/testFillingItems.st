tests
testFillingItems

	queryResult fillWith: {Object. Array. Point} "query sorts items by name".
	
	self assert: queryResult items asArray equals: { Array. Object. Point }