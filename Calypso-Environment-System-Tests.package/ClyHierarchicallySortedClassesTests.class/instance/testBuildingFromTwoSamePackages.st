tests
testBuildingFromTwoSamePackages
	| packages |
	packages := environment 
		selectScope: ClyPackageScope 
		of: { ClyClass9FromPExtendedByP5 package. ClyClass9FromPExtendedByP5 package}.
		
	self retrieveContentFrom: packages.
	
	self assert: actualObjects equals: {ClyClass9FromPExtendedByP5 }.