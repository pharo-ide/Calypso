tests
testEmptyInPackageWithoutAnyTags
	query scope: (ClyPackageScope 
		of: ClyClass9FromPExtendedByP5 package in: environment).
		
	self assert: query checkEmptyResult