tests
testGettingActualItems

	| actual |
	self simulateResultWith: #(#a #b #c).
	
	actual := queryResult actualItems.
	
	self assert: actual asArray equals: #(#a #b #c)