tests
testFillingWithItemsShouldOnlyPrepareBuffer

	queryResult fillWith: #(1 2 3).
	
	self assert: queryResult items equals: #(nil nil nil)