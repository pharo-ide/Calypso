tests
testBuildingFromTwoPackages
	| packages |
	packages := environment 
		selectScope: ClyPackageScope of: { ClyClass9FromPExtendedByP5 package. ClyClass8WithTag2FromP5 package }.
		
	self retrieveContentFrom: packages.

	self assert: actualObjects equals: {
		ClyClass6UntaggedFromP5. ClyClass7WithTag1FromP5. ClyClass8WithTag2FromP5. ClyClass9FromPExtendedByP5}.