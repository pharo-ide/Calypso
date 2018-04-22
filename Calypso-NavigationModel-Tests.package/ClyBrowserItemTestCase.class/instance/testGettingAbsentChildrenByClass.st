tests
testGettingAbsentChildrenByClass
	| children |
		
	children := item childrenLike: ClyBrowserItemChildrenExample.
	
	self assert: children class equals: ClyBrowserItemChildrenExample.
	self assert: children query equals: ClyUnknownQuery instance