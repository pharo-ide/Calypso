tests
testNotEmptyInPackageWithTagsAndUncategorizedClasses
	
	query scope: (ClyPackageScope of: {ClyClass6UntaggedFromP5 package }).

	self deny: (query isEmptyIn: environment)