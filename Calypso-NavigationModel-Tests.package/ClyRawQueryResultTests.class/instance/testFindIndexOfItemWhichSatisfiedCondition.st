tests
testFindIndexOfItemWhichSatisfiedCondition

	| actual |
	queryResult fillWith: #(item1 item2 item3).

	actual := queryResult findFirstItemWhere: [:each | each = #item2].
	
	self assert: actual equals: 2