tests
testBuildingFromTwoClassesWithDifferentSuperclass

	self retrieveSubgroupsFrom: { ClySubclassN1OfClass1FromP1. ClySubclassLOfClass2FromP1 }.

	self assertItems: { ClyClass1FromP1. 0. ClyClass2FromP1. 0. Object. 0. ProtoObject. 1  }