tests
testBuildingFromThreePackagesWithJointHierarchy
	| packages |
	packages := environment selectScope: ClyPackageScope of: {
		ClySubclassLOfSubclassMFromP3 package. ClySubclassMOfClass1FromP2 package. ClyClass1FromP1 package}.
	
	self retrieveContentFrom: packages.
	
	self assertItems: {
		ClyClass1FromP1. 0. ClySubclassMOfClass1FromP2. 1. ClySubclassLOfSubclassMFromP3. 2.
		ClySubclassN1OfClass1FromP1. 1. ClySubclassN2OfClass1FromP1. 1. ClyClass2FromP1. 0.
		ClySubclassLOfClass2FromP1. 1. ClySubclassLOfClass0FromPExtendedByP1. 0 }