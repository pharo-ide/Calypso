tests
testBuildingFromTwoClassesWhereFirstIsSuperclassOfOther

	self retrieveSubgroupsFrom: { ClyClass1FromP1. ClySubclassN1OfClass1FromP1 }.

	self assertItems: { ClyClass1FromP1. 0. Object. 1. ProtoObject. 2 }