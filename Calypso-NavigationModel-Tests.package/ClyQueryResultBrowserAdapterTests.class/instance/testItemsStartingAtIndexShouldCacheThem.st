tests
testItemsStartingAtIndexShouldCacheThem

	| items2 |
	self buildResultWith: #(#item1 #item2 #item3 #item4).
	
	items := queryResult itemsStartingAt: 2 count: 2.
	items2 := queryResult itemsStartingAt: 2 count: 2.
	self assert: items first == items2 first.
	self assert: items second == items2 second
