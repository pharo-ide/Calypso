tests
testBuildingFromSubclassScope
	| subclassScope |
	subclassScope := environment 
		selectScope: ClySubclassScope of: { ClyClass1FromP1}.
		
	self retrieveContentFrom: subclassScope.
		
	self assertItems: {
		ProtoObject. 0. Object. 1. ClyClass1FromP1. 2.
		ClySubclassMOfClass1FromP2. 3. ClySubclassLOfSubclassMFromP3. 4.
		ClySubclassN1OfClass1FromP1. 3. ClySubclassN2OfClass1FromP1. 3}