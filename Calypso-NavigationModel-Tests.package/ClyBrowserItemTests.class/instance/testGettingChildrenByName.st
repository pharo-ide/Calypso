tests
testGettingChildrenByName
	| children |
	
	item addChildren: (ClyBrowserItemChildren named: #someChildren query: #testQuery).
	item addChildren: (ClyBrowserItemChildren named: #someChildren2 query: #testQuery2).
	
	children := item childrenNamed: #someChildren2.
	
	self assert: children equals: item children last