tests
testBuildingFromTwoClassesWithDifferentHierarchySize

	self retrieveSubgroupsFrom: { ClySubclassLOfClass2FromP1. ClySubclassLOfSubclassMFromP3 }.

		self assertItems: { ClySubclassMOfClass1FromP2. 0. ClyClass1FromP1. 1. 
			ClyClass2FromP1. 0. Object. 0. ProtoObject. 1 } 