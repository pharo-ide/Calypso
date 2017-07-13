tests
testBuildingFromThreeClassesFromOneHierarchy
	| scope |
	scope := environment 
		selectScope: ClyLocalClassScope 
		of: { ClySubclassN1OfClass1FromP1. ClySubclassLOfSubclassMFromP3. ClyClass1FromP1. ClySubclassN2OfClass1FromP1 }.
	
	self retrieveContentFrom: scope.
	
	self assertItems: {
		ClyClass1FromP1. 0. ClySubclassLOfSubclassMFromP3. 1. 
		ClySubclassN1OfClass1FromP1. 1. ClySubclassN2OfClass1FromP1. 1 }