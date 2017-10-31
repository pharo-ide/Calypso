tests
testAllItems
	
	| allItems |
	allItems := cursor retrieveAll.
	
	self deny: allItems = queryResult items.
	self assert: (allItems collect: #actualObject) equals: queryResult items