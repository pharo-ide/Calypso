tests
testBuildingFromProtoObjectMetaclass

	self retrieveSubgroupsFrom: {ProtoObject class}.
	
	self assertItems: {}