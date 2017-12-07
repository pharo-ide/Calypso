tests
testFromPackageWithTagsAndUncategorizedClasses
	
	self queryFromScope: ClyPackageScope of: ClyClass6UntaggedFromP5 package.

	self assert: resultItems asSet equals: {ClyClass6UntaggedFromP5} asSet