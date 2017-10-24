tests
testFromSingleClass

	| resultGroups |
	self queryInScope: ClyClassScope of: {ClyClass1FromP1}.
	resultGroups := resultItems collect: #actualObject.
	
	self assert: (resultGroups collect: #class as: Set) equals: { ClyInheritedMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (resultGroups select:[:each | each class = ClyTaggedMethodGroup] thenCollect: #tag) asSet
		equals: ClyClass1FromP1 tagsForMethods asSet