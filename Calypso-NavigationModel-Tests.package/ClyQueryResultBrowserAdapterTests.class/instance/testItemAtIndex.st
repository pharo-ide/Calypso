tests
testItemAtIndex

	| actual |
	self buildResultWith: #(#item1 #item2 #item3).
	
	actual := queryResult itemAt: 2.
	
	self assert: actual class equals: ClyBrowserItem.
	self assert: actual actualObject equals: #item2.
	self assert: actual position equals: 2.