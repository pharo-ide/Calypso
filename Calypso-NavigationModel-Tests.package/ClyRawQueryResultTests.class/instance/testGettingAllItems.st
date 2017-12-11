tests
testGettingAllItems

	| actual |
	queryResult fillWith: #(1 2 3).

	actual := queryResult allItems.
	
	self assert: actual asArray equals: #(1 2 3)