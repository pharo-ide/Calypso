tests
testAddingChildrenWithSameNameTwice
	| children children2 |
	children := ClyBrowserItemChildren named: #testChildren query: #testQuery.
	children2 := ClyBrowserItemChildren named: #testChildren query: #testQuery2.
	
	item addChildren: children.
	item addChildren: children2.
	
	self assert: item children size equals: 1.
	self assert: item children first equals: children2