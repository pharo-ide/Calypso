tests
testBuildingFromSingleClass

	self retrieveSubgroupsFrom: { ClyClass1FromP1 }.

	self assertItems: {Object. 0. ProtoObject. 1}