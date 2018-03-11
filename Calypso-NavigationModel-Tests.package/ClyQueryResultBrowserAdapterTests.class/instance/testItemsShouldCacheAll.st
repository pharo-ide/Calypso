tests
testItemsShouldCacheAll

	self buildResultWith: #(#item1 #item2 #item3).
	
	items := queryResult items.
	
	self assert: items size equals: 3.
	self assert: items first == (queryResult itemAt: 1).
	self assert: items second == (queryResult itemAt: 2).
	self assert: items last == (queryResult itemAt: 3).