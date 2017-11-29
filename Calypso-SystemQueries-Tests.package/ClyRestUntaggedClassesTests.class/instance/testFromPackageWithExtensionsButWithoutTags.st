tests
testFromPackageWithExtensionsButWithoutTags
	
	self queryInScope: ClyPackageScope of: {ClyClass1FromP1 package }.

	self assert: resultItems isEmpty