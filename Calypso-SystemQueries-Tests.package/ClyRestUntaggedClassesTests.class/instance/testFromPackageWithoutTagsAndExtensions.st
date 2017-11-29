tests
testFromPackageWithoutTagsAndExtensions
	
	self queryInScope: ClyPackageScope of: {ClyClass9FromPExtendedByP5 package }.

	self assert: resultItems isEmpty