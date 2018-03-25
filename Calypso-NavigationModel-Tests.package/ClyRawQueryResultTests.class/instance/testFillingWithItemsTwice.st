tests
testFillingWithItemsTwice

	queryResult fillWith: #(1 2 3).
	queryResult fillWith: #(4 5 6).
	
	self assert: queryResult items asArray equals: #(4 5 6)