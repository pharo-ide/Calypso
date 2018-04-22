tests
testGettingChildrenByClass
	| children |
	
	item addChildren: (ClyBrowserItemChildren named: #someChildren2 query: #testQuery2).
	item addChildren: (ClyBrowserItemChildrenExample query: #testQuery).
	
	children := item childrenLike: ClyBrowserItemChildrenExample.
	
	self assert: children equals: item children last