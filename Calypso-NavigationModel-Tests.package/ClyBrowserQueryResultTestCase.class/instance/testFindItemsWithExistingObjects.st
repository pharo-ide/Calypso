tests
testFindItemsWithExistingObjects

	self simulateResultWith: #(#item1 #item2 #item3 #item4).
	
	items := queryResult itemsWith: #(#item2 item4).
	
	self assert: items size equals: 2.
	self assert: items first actualObject equals: #item2.
	self assert: items first position equals: 2.
	self assert: items second actualObject equals: #item4.
	self assert: items second position equals: 4