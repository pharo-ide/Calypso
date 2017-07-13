tests
testBuildingFromThreeClassesWhereLastIsObject

	self retrieveSubgroupsFrom: { 
		ClySubclassN1OfClass1FromP1. ClySubclassN2OfClass1FromP1. Object }.

	self assertItems: { ClyClass1FromP1. 0. Object. 1. ProtoObject. 2 }