tests
testAllItems
	
	| allItems |
	allItems := cursor retrieveAll.
	
	self assert: allItems equals: queryResult items