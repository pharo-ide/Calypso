tests
testNotEmptyInPackageWithTagsAndUncategorizedClasses
	query
		scope:
			(ClyPackageScope
				ofAll: {ClyClass6UntaggedFromP5 package}
				in: environment).
	self deny: query checkEmptyResult