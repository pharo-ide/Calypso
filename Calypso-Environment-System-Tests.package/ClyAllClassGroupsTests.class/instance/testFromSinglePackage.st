tests
testFromSinglePackage

	| resultGroups |
	self queryInScope: ClyPackageScope of: { ClyClass7WithTag1FromP5 package}.
	resultGroups := resultItems collect: #actualObject.
	
	self assert: (resultGroups collect: #class as: Set) equals: { ClyNoTagClassGroup. ClyTaggedClassGroup. ClyExtendedClassGroup} asSet.
	self 
		assert: (resultGroups select:[:each | each class = ClyTaggedClassGroup] thenCollect: #tag) asSet
		equals: ClyClass7WithTag1FromP5 package tagsForClasses asSet