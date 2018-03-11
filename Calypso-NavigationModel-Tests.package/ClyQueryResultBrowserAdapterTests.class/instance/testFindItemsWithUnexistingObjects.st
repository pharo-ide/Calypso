tests
testFindItemsWithUnexistingObjects

	self buildResultWith: #(#item1 #item2 #item3 #item4).
	
	items := queryResult findItemsWith: #(#item2 unexistingObject).
	
	self assert: items size equals: 2.
	self assert: items first actualObject equals: #item2.
	self assert: items first position equals: 2.
	self assert: items second isNil