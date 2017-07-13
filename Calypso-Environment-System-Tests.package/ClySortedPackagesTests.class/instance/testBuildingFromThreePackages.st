tests
testBuildingFromThreePackages
	| packages |
	packages := environment selectScope: ClyPackageScope of: { 
		ClyClass0FromPWithSingleClass package. ClyClass1FromP1 package. ClyClass9FromPExtendedByP5 package }.
		
	self retrieveContentFrom: packages.
	
	self assertItems: { ClyClass1FromP1 package. 0. ClyClass9FromPExtendedByP5 package. 0. ClyClass0FromPWithSingleClass package. 0 }