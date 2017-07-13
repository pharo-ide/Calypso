tests
testBuildingFromTwoPackagesWithSimpleHierarchyAndExtension
	| packages |
	packages := environment 
		selectScope: ClyPackageScope 
		of: { ClyClass9FromPExtendedByP5 package. ClyClass1FromP1 package}.
		
	self retrieveContentFrom: packages.
	
	self assert: actualObjects equals: {
		ClyClass1FromP1. ClySubclassN1OfClass1FromP1. ClySubclassN2OfClass1FromP1. 
		ClyClass2FromP1. ClySubclassLOfClass2FromP1.ClyClass9FromPExtendedByP5.
		ClySubclassLOfClass0FromPExtendedByP1}.