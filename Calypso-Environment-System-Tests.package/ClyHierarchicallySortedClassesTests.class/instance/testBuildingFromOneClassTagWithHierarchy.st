tests
testBuildingFromOneClassTagWithHierarchy
	| scope classTag classGroup |
	classTag := ClyClass1FromP1 package classTags anyOne name.  "Lowbrow-Environment-Tests-P1WithHierarchy"
	classGroup := ClyTaggedClassGroup in: ClyClass1FromP1 package tag: classTag.
	scope := environment selectScope: ClyClassGroupScope of: { classGroup }.
	
	self retrieveContentFrom: scope.
	
	self assertItems: {
		ClyClass1FromP1. 0. ClySubclassN1OfClass1FromP1. 1. ClySubclassN2OfClass1FromP1. 1.
		ClyClass2FromP1. 0. ClySubclassLOfClass2FromP1. 1 }