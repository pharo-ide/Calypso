tests
testGettingItemsStartingAtGivenPosition

	| actual |
	queryResult fillWith: #(1 2 3 4 5 6).

	actual := queryResult itemsStartingAt: 3 count: 2.
	
	self assert: actual asArray equals: #(3 4)