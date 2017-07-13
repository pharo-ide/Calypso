tests
testBuildingFromThreeClassesWhereLastIsCommonSuperclass

	self retrieveSubgroupsFrom: { 
		ClySubclassN1OfClass1FromP1. ClySubclassN2OfClass1FromP1. ClyClass1FromP1 }.

	self assertItems: { ClyClass1FromP1. 0. Object. 1. ProtoObject. 2 }