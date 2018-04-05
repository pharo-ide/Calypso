tests
testItemAtIndex

	| actual |
	self simulateResultWith: #(#item1 #item2 #item3).
	
	actual := queryResult itemAt: 2.
	
	self assert: (actual isKindOf: ClyBrowserItem).
	self assert: actual actualObject equals: #item2.
	self assert: actual position equals: 2.