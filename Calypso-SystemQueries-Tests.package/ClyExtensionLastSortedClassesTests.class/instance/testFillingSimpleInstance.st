tests
testFillingSimpleInstance
	queryResult := ClyExtensionLastSortedClasses simple.

	queryResult buildingQuery: (ClyAllClasses from: ClyPackageScope of: ClyClass1FromP1 package in: environment).
	queryResult buildWith: {
		ClySubclassLOfClass0FromPExtendedByP1. ClySubclassN1OfClass1FromP1.  ClyClass1FromP1}.
	
	self assertItems: {ClyClass1FromP1. 0. ClySubclassN1OfClass1FromP1. 0.
		 ClySubclassLOfClass0FromPExtendedByP1. 0}.
	self assert: (items last isMarkedWith: ClyExtendedClassTag).
	self deny: (items first isMarkedWith: ClyExtendedClassTag).
	self deny: (items second isMarkedWith: ClyExtendedClassTag)