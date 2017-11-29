tests
testNotEmptyInPackageWithTagsAndUncategorizedClasses
	query scope: (ClyPackageScope of: {ClyClass6UntaggedFromP5 package} in: environment).
	
	self deny: query checkEmptyResult