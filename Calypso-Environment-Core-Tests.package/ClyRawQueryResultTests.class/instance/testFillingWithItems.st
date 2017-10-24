tests
testFillingWithItems

	queryResult fillWith: #(1 2 3).
	
	self assert: queryResult items asArray equals: #(1 2 3)