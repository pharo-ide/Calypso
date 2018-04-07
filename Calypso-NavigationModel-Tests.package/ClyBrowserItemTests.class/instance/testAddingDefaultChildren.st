tests
testAddingDefaultChildren
	| children |
	
	item defaultChildren: #testQuery.
	
	children := item children first.
	
	self assert: children class equals: ClyBrowserItemChildren.
	self assert: children name equals: #default.
	self assert: children query equals: #testQuery.