tests
testGettingAllItems

	| actual |
	queryResult fillWith: #(1 2 3).

	actual := queryResult items.
	
	self assert: actual asArray equals: #(1 2 3)