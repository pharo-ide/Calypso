tests
testGettingAbsentChildrenByName
	| children |
	
	children := item childrenNamed: #someChildren.
	
	self assert: children class equals: ClyBrowserItemChildren.
	self assert: children name equals: #someChildren.
	self assert: children query equals: ClyUnknownQuery instance