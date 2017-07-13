tests
testBuildingFromOnePackagesWithoutTagsAndExtensions
	| packages |
	packages := environment selectScope: ClyPackageScope of: { ClyClass9FromPExtendedByP5 package}.

	self retrieveContentFrom: packages.
	
	self assert: actualObjects size equals: 0