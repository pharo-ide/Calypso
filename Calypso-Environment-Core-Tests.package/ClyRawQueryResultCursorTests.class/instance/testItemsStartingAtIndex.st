tests
testItemsStartingAtIndex
	
	| allItems |
	allItems := cursor itemsStartingAt: 1 count: 2.
	
	self assert: (allItems collect: #actualObject) equals: (queryResult items first: 2)