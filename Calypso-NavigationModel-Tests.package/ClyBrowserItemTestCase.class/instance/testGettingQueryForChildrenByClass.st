tests
testGettingQueryForChildrenByClass
	
	| query |
	item addChildren: (ClyBrowserItemChildren named: #someChildren2 query: #testQuery2).
	item addChildren: (ClyBrowserItemChildrenExample query: #testQuery).
	
	query := item queryForChildrenLike: ClyBrowserItemChildrenExample.
	
	self assert: query equals: #testQuery