tests
testEmptyInPackageWithoutAnyTags
	query 	scope: (ClyPackageScope of: {ClyClass9FromPExtendedByP5 package}).
		
	self assert: query checkEmptyResult