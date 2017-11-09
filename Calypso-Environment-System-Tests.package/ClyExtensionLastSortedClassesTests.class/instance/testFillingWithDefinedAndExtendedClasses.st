tests
testFillingWithDefinedAndExtendedClasses

	queryResult buildingQuery: (ClyAllClasses from: ClyPackageScope of: { ClyClass1FromP1 package }).
	queryResult fillWith: {ClyClass1FromP1. ClySubclassLOfClass0FromPExtendedByP1. ClyClass2FromP1 }.
	
	self assertItems: {ClyClass1FromP1. 0. ClyClass2FromP1. 0.
		 ClySubclassLOfClass0FromPExtendedByP1. 0}