tests
testEmptyInPackageWithoutAnyTags
	query
		scope:
			(ClyPackageScope
				ofAll: {ClyClass9FromPExtendedByP5 package}
				in: environment).
	self assert: query checkEmptyResult