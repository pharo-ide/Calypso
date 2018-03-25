tests
testFindIndexOfUnexistingItem

	| actual |
	queryResult fillWith: #(item1 item2 item3).

	actual := queryResult findFirstItemWhere: [:each | false].
	
	self assert: actual equals: 0