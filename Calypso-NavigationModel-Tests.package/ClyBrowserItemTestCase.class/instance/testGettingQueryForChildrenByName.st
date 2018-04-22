tests
testGettingQueryForChildrenByName
	
	| query |
	item addChildren: (ClyBrowserItemChildren named: #someChildren query: #testQuery).
	item addChildren: (ClyBrowserItemChildren named: #someChildren2 query: #testQuery2).
	
	query := item queryForChildrenNamed: #someChildren2.
	
	self assert: query equals: #testQuery2