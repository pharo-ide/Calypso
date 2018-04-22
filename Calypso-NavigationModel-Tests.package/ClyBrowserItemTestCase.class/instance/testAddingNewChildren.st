tests
testAddingNewChildren
	| children |
	children := ClyBrowserItemChildren named: #testChildren query: #testQuery.
	
	item addChildren: children.
	
	self assert: item children first equals: children