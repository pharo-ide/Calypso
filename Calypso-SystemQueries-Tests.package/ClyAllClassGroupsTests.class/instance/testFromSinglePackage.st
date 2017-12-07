tests
testFromSinglePackage

	self queryFromScope: ClyPackageScope of: ClyClass7WithTag1FromP5 package.
	
	self assert: (resultItems collect: #class as: Set) equals: { ClyNoTagClassGroup. ClyTaggedClassGroup. ClyClassGroup} asSet.
	self 
		assert: (resultItems select:[:each | each class = ClyTaggedClassGroup] thenCollect: #tag) asSet
		equals: ClyClass7WithTag1FromP5 package tagsForClasses asSet