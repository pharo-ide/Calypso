tests
testAddingNewChildrenUsingClassAndQuery
	| children |
	
	item addChildren: ClyBrowserItemChildrenExample with: #testQuery.
	
	children := item children first.
	self assert: children class equals: ClyBrowserItemChildrenExample.
	self assert: children query equals: #testQuery.