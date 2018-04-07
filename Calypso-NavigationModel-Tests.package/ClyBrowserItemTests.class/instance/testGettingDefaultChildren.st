tests
testGettingDefaultChildren
	| children |
	
	item addChildren: (ClyBrowserItemChildren named: #someChildren query: #testQuery).
	item defaultChildren: #testQuery.
	
	children := item defaultChildren.
	
	self assert: children equals: item children last