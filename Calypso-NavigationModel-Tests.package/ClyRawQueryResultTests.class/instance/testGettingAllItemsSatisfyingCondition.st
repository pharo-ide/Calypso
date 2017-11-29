tests
testGettingAllItemsSatisfyingCondition

	| actual |
	queryResult fillWith: #(1 2 3 4 5 6).

	actual := queryResult itemsWhere: [:each | each between: 2 and: 4].
	
	self assert: actual asArray equals: #(2 3 4)