tests
testFromPackageWithExtensionsButWithoutTags
	
	self queryFromScope: ClyPackageScope of: ClyClass1FromP1 package.

	self assert: resultItems isEmpty