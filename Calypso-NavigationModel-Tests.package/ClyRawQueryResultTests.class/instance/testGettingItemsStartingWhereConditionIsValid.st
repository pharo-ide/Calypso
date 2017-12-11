tests
testGettingItemsStartingWhereConditionIsValid

	| actual |
	queryResult fillWith: #(1 2 3 4 5 6).

	actual := queryResult itemsStartingWhere: [:each | each > 3] count: 2.
	
	self assert: actual asArray equals: #(4 5)