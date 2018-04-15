tests
testFromSingleClass

	self queryFromScope: ClyInstanceSideScope of: ClyClass1FromP1.
	
	self assert: (resultItems collect: #class as: Set) equals: { ClyAllMethodGroup. ClyMethodTagItem} asSet.
	self 
		assert: (resultItems select:[:each | each class = ClyMethodTagItem] thenCollect: #tag) asSet
		equals: ClyClass1FromP1 tagsForMethods asSet